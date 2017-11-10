package muAlloy.rule;

import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.UnaryExpr;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Unary Operator Insertion.
 */
public class UOI {

  /**
   * Insert * (reflexive transitive closure), ^ (transitive closure) and ~ (transpose).
   */
  public static List<MutationData> mutate(ExprOrFormula exprOrFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    // Ignore UnaryExpr with op NOOP
    if (exprOrFormula instanceof UnaryExpr
        && ((UnaryExpr) exprOrFormula).getOp() == UnaryExpr.UnaryOp.NOOP) {
      return res;
    }
    if (AlloyUtil.isHomogeneous(exprOrFormula.getType())) {
      UnaryExpr parent = (UnaryExpr) exprOrFormula.getParent();
      for (UnaryExpr.UnaryOp unaryOp : UnaryExpr.UnaryOp.values()) {
        if (unaryOp.getGroup() != UnaryExpr.UnaryOp.Group.CLOSURE
            && unaryOp.getGroup() != UnaryExpr.UnaryOp.Group.TRANSPOSE) {
          continue;
        }
        if (exprOrFormula instanceof UnaryExpr && unaryOp == ((UnaryExpr) exprOrFormula).getOp()) {
          continue;
        }
        Type type = exprOrFormula.getType();
        if (unaryOp == UnaryExpr.UnaryOp.TRANSPOSE) {
          type = type.transpose();
        }
        UnaryExpr wrapper = new UnaryExpr(parent, type, exprOrFormula, unaryOp);
        parent.setSub(wrapper);
//                String mutatedPartAsString = parent.accept(opt.getPSV(), null);
        String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(wrapper, opt.getPSV());
        String mutant = mu.accept(opt.getPSV(), null);
        if (AlloyUtil.isValidModel(mutant)) {
          String equivModel;
          switch (mi.getType()) {
            case PRED:
            case FUN:
              PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                  .accept(new CloneVisitor(), null);
              parent.setSub(exprOrFormula);
              equivModel = MutantEquivalenceChecker
                  .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
              break;
            case FACT:
            case ASSERT:
              Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                  .accept(new CloneVisitor(), null);
              parent.setSub(exprOrFormula);
              equivModel = MutantEquivalenceChecker
                  .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
              break;
            default:
              throw new UnsupportedOptionException(
                  UOI.class.getSimpleName() + " for expression is not supported in " + mi
                      .getType());
          }
          res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
              .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
        }
      }
      parent.setSub(exprOrFormula);
    }
    return res;
  }
}

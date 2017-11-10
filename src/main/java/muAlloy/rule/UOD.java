package muAlloy.rule;

import static parser.util.AlloyUtil.getFirstNonNOOPChild;

import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Unary Operator Deletion.
 */
public class UOD {

  /**
   * Delete * (reflexive transitive closure), ^ (transitive closure) and ~ (transpose).
   */
  public static MutationData mutate(UnaryExpr unaryExpr, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    if (mi.getType() == MInfo.MType.IGNORE) {
      return null;
    }
    MutationData res = null;
    UnaryExpr.UnaryOp original = unaryExpr.getOp();
    if (original.getGroup() == UnaryExpr.UnaryOp.Group.CLOSURE || (
        original.getGroup() == UnaryExpr.UnaryOp.Group.TRANSPOSE && AlloyUtil
            .isHomogeneous(unaryExpr.getType()))) {
      // Parent will be UnaryExpr whose op is NOOP。
      // We never use type so we don't need to set it.
      UnaryExpr parent = (UnaryExpr) unaryExpr.getParent();
      // Note that sub could be NOOP UnaryExpr.
      ExprOrFormula sub = unaryExpr.getSub();
      parent.setSub(sub);
      sub.setParent(parent);
//            String mutatedPartAsString = parent.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil
          .computeNodePathAsString(getFirstNonNOOPChild(sub), opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            parent.setSub(unaryExpr);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            parent.setSub(unaryExpr);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                UOD.class.getSimpleName() + " for expression is not supported in " + mi.getType());
        }
        res = MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt));
      }
      parent.setSub(unaryExpr);
      sub.setParent(unaryExpr);
    }
    return res;
  }

  /**
   * Delete ! (not).
   */
  public static MutationData mutate(UnaryFormula unaryFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    if (mi.getType() == MInfo.MType.IGNORE) {
      return null;
    }
    MutationData res = null;
    UnaryFormula.UnaryOp original = unaryFormula.getOp();
    if (original == UnaryFormula.UnaryOp.NOT) {
      // Parent will be UnaryExpr whose op is NOOP
      UnaryExpr parent = (UnaryExpr) unaryFormula.getParent();
      // Note that sub could be NOOP UnaryExpr.
      ExprOrFormula sub = unaryFormula.getSub();
      parent.setSub(sub);
      sub.setParent(parent);
//            String mutatedPartAsString = parent.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil
          .computeNodePathAsString(getFirstNonNOOPChild(sub), opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            parent.setSub(unaryFormula);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            parent.setSub(unaryFormula);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                UOD.class.getSimpleName() + " for formula is not supported in " + mi.getType());
        }
        res = MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt));
      }
      parent.setSub(unaryFormula);
      sub.setParent(unaryFormula);
    }
    return res;
  }
}

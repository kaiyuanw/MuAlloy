package muAlloy.rule;

import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ITEExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Imply-Else Operand Exchange.
 */
public class IEOE {

  public static MutationData mutate(ITEExprOrFormula iteExpr, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    if (mi.getType() == MInfo.MType.IGNORE) {
      return null;
    }
    MutationData res = null;
    ExprOrFormula originalThenClause = iteExpr.getThenClause();
    ExprOrFormula originalElseClause = iteExpr.getElseClause();
    iteExpr.setThenClause(originalElseClause);
    iteExpr.setElseClause(originalThenClause);
//        String mutatedPartAsString = iteExpr.accept(opt.getPSV(), null);
    String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(iteExpr, opt.getPSV());
    String mutant = mu.accept(opt.getPSV(), null);
    if (AlloyUtil.isValidModel(mutant)) {
      String equivModel;
      switch (mi.getType()) {
        case PRED:
        case FUN:
          PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
          iteExpr.setThenClause(originalThenClause);
          iteExpr.setElseClause(originalElseClause);
          equivModel = MutantEquivalenceChecker
              .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
          break;
        case FACT:
        case ASSERT:
          Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
              .accept(new CloneVisitor(), null);
          iteExpr.setThenClause(originalThenClause);
          iteExpr.setElseClause(originalElseClause);
          equivModel = MutantEquivalenceChecker
              .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
          break;
        default:
          throw new UnsupportedOptionException(
              IEOE.class.getSimpleName() + " for expression is not supported in " + mi.getType());
      }
      res = MutationData.of(mutatedNodePathAsString, mutant,
          MutantEquivalenceChecker.checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt));
    }
    iteExpr.setThenClause(originalThenClause);
    iteExpr.setElseClause(originalElseClause);
    return res;
  }
}

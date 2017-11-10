package muAlloy.rule;

import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.nodes.VarDecl;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Unary Operator Replacement.
 */
public class UOR {

  public static List<MutationData> mutate(UnaryExpr unaryExpr, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    if (unaryExpr.getParent() instanceof VarDecl
        && unaryExpr.getOp().getGroup() == UnaryExpr.UnaryOp.Group.REL_DECL) {
      return res;
    }
    UnaryExpr.UnaryOp original = unaryExpr.getOp();
    for (UnaryExpr.UnaryOp unaryOp : UnaryExpr.UnaryOp.values()) {
      if (unaryOp == original || unaryOp.getGroup() != original.getGroup()) {
        continue;
      }
      unaryExpr.setOp(unaryOp);
//            String mutatedPartAsString = unaryExpr.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(unaryExpr, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case FIELD:
            unaryExpr.setOp(UnaryExpr.UnaryOp.SET);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, (SigDecl) mi.getNode(), (FieldDecl) mi.getExtraNode(),
                    original, unaryOp, opt.getScope());
            break;
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            unaryExpr.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            unaryExpr.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                UOR.class.getSimpleName() + " for expression is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
    }
    unaryExpr.setOp(original);
    return res;
  }

  public static List<MutationData> mutate(UnaryFormula unaryFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    UnaryFormula.UnaryOp original = unaryFormula.getOp();
    for (UnaryFormula.UnaryOp unaryOp : UnaryFormula.UnaryOp.values()) {
      if (unaryOp == original || unaryOp.getGroup() != original.getGroup()) {
        continue;
      }
      unaryFormula.setOp(unaryOp);
//            String mutatedPartAsString = unaryFormula.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil
          .computeNodePathAsString(unaryFormula, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            unaryFormula.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            unaryFormula.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                UOR.class.getSimpleName() + " for formula is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
    }
    unaryFormula.setOp(original);
    return res;
  }
}

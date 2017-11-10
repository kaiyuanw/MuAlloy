package muAlloy.rule;

import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Binary Operator Replacement.
 */
public class BOR {

  public static List<MutationData> mutate(BinaryExpr binaryExpr, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    BinaryExpr.BinaryOp original = binaryExpr.getOp();
    for (BinaryExpr.BinaryOp binaryOp : BinaryExpr.BinaryOp.values()) {
      if (binaryOp == original || binaryOp.getGroup() != original.getGroup()) {
        continue;
      }
      binaryExpr.setOp(binaryOp);
//            String mutatedPartAsString = binaryExpr.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryExpr, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            binaryExpr.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            binaryExpr.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                BOR.class.getSimpleName() + " for expression is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
    }
    binaryExpr.setOp(original);
    return res;
  }

  public static List<MutationData> mutate(BinaryFormula binaryFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    BinaryFormula.BinaryOp original = binaryFormula.getOp();
    for (BinaryFormula.BinaryOp binaryOp : BinaryFormula.BinaryOp.values()) {
      if (binaryOp == original || binaryOp.getGroup() != original.getGroup()) {
        continue;
      }
      binaryFormula.setOp(binaryOp);
//            String mutatedPartAsString = binaryFormula.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil
          .computeNodePathAsString(binaryFormula, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            binaryFormula.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            binaryFormula.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                BOR.class.getSimpleName() + " for formula is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
    }
    binaryFormula.setOp(original);
    return res;
  }
}

package muAlloy.rule;

import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Binary Operand Exchange.
 */
public class BOE {

  public static MutationData mutate(BinaryExpr binaryExpr, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    if (mi.getType() == MInfo.MType.IGNORE) {
      return null;
    }
    if (binaryExpr.getOp().getGroup() != BinaryExpr.BinaryOp.Group.SET_OPERATION || binaryExpr
        .getOp().isCommutative()) {
      return null;
    }
    MutationData res = null;
    ExprOrFormula originalLeft = binaryExpr.getLeft();
    ExprOrFormula originalRight = binaryExpr.getRight();
    binaryExpr.setLeft(originalRight);
    binaryExpr.setRight(originalLeft);
//        String mutatedPartAsString = binaryExpr.accept(opt.getPSV(), null);
    String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryExpr, opt.getPSV());
    String mutant = mu.accept(opt.getPSV(), null);
    if (AlloyUtil.isValidModel(mutant)) {
      String equivModel;
      switch (mi.getType()) {
        case PRED:
        case FUN:
          PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
          binaryExpr.setLeft(originalLeft);
          binaryExpr.setRight(originalRight);
          equivModel = MutantEquivalenceChecker
              .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
          break;
        case FACT:
        case ASSERT:
          Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
              .accept(new CloneVisitor(), null);
          binaryExpr.setLeft(originalLeft);
          binaryExpr.setRight(originalRight);
          equivModel = MutantEquivalenceChecker
              .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
          break;
        default:
          throw new UnsupportedOptionException(
              BOE.class.getSimpleName() + " for formula is not supported in " + mi.getType());
      }
      res = MutationData.of(mutatedNodePathAsString, mutant,
          MutantEquivalenceChecker.checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt));
    }
    binaryExpr.setLeft(originalLeft);
    binaryExpr.setRight(originalRight);
    return res;
  }

  public static MutationData mutate(BinaryFormula binaryFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    if (mi.getType() == MInfo.MType.IGNORE) {
      return null;
    }
    if (binaryFormula.getOp().getGroup() != BinaryFormula.BinaryOp.Group.SET_OPERATION
        && binaryFormula.getOp().getGroup() != BinaryFormula.BinaryOp.Group.IMPLICATION
        || binaryFormula.getOp().isCommutative()) {
      return null;
    }
    MutationData res = null;
    ExprOrFormula originalLeft = binaryFormula.getLeft();
    ExprOrFormula originalRight = binaryFormula.getRight();
    binaryFormula.setLeft(originalRight);
    binaryFormula.setRight(originalLeft);
//        String mutatedPartAsString = binaryFormula.accept(opt.getPSV(), null);
    String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryFormula, opt.getPSV());
    String mutant = mu.accept(opt.getPSV(), null);
    if (AlloyUtil.isValidModel(mutant)) {
      String equivModel;
      switch (mi.getType()) {
        case PRED:
        case FUN:
          PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
          binaryFormula.setLeft(originalLeft);
          binaryFormula.setRight(originalRight);
          equivModel = MutantEquivalenceChecker
              .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
          break;
        case FACT:
        case ASSERT:
          Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
              .accept(new CloneVisitor(), null);
          binaryFormula.setLeft(originalLeft);
          binaryFormula.setRight(originalRight);
          equivModel = MutantEquivalenceChecker
              .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
          break;
        default:
          throw new UnsupportedOptionException(
              BOE.class.getSimpleName() + " for formula is not supported in " + mi.getType());
      }
      res = MutationData.of(mutatedNodePathAsString, mutant,
          MutantEquivalenceChecker.checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt));
    }
    binaryFormula.setLeft(originalLeft);
    binaryFormula.setRight(originalRight);
    return res;
  }
}

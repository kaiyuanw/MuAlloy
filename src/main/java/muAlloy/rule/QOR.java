package muAlloy.rule;

import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.QtFormula;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Quantifier Operator Replacement.
 */
public class QOR {

  public static List<MutationData> mutate(QtFormula qtFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    QtFormula.Quantifier original = qtFormula.getOp();
    for (QtFormula.Quantifier qt : QtFormula.Quantifier.values()) {
      if (qt == original) {
        continue;
      }
      qtFormula.setOp(qt);
//            String mutatedPartAsString = qtFormula.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(qtFormula, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            qtFormula.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            qtFormula.setOp(original);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                QOR.class.getSimpleName() + " for formula is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
    }
    qtFormula.setOp(original);
    return res;
  }
}

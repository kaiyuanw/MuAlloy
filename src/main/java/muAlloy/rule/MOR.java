package muAlloy.rule;

import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.SigDecl;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * Multiplicity Operator Replacement
 */
public class MOR {

  public static List<MutationData> mutate(SigDecl sigDecl, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    SigDecl.MULT original = sigDecl.getMult();
    for (SigDecl.MULT mult : SigDecl.MULT.values()) {
      if (mult == original) {
        continue;
      }
      sigDecl.setMult(mult);
//            String mutatedPartAsString = sigDecl.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(sigDecl, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      // Check if the mutant compiles.
      if (AlloyUtil.isValidModel(mutant)) {
        // Check if the mutant is equivalent to the original model.
        String equivModel;
        switch (mi.getType()) {
          case SIG:
            sigDecl.setMult(SigDecl.MULT.SET);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, (SigDecl) mi.getNode(), original, mult, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                MOR.class.getSimpleName() + " is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
    }
    sigDecl.setMult(original);
    return res;
  }
}

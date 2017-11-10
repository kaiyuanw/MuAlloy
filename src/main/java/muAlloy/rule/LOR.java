package muAlloy.rule;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.util.MInfo;
import muAlloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ListFormula.ListOp;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

/**
 * List Operator Replacement.
 */
public class LOR {

  public static List<MutationData> mutate(ListFormula listFormula, ModelUnit mu,
      MutantGeneratorOpt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    ListFormula.ListOp original = listFormula.getOp();
    for (ListFormula.ListOp listOp : ListFormula.ListOp.values()) {
      if (listOp == original) {
        continue;
      }
      // LOR can only affect the node's parent or node's children.
      // First flatten the current node, then try to flatten the parent node.
      boolean canFlattenParent = false;
      List<ExprOrFormula> parentChildren = null;
      List<ExprOrFormula> currentChildren = listFormula.getArguments();
      listFormula.setOp(listOp);
      flattenListFormula(listFormula);
      if (listFormula.getParent() instanceof ListFormula) {
        ListFormula parent = (ListFormula) listFormula.getParent();
        canFlattenParent = canFlatten(parent);
        parentChildren = parent.getArguments();
        flattenListFormula(parent);
      }
//            String mutatedPartAsString = listFormula.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil
          .computeNodePathAsString(canFlattenParent ? listFormula.getParent() : listFormula,
              opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            revertListFormula(listFormula, original, parentChildren, currentChildren);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            revertListFormula(listFormula, original, parentChildren, currentChildren);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                LOR.class.getSimpleName() + " for formula is not supported in " + mi.getType());
        }
        res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
      }
      revertListFormula(listFormula, original, parentChildren, currentChildren);
    }
    return res;
  }

  public static void revertListFormula(ListFormula listFormula, ListFormula.ListOp original,
      List<ExprOrFormula> parentChildren, List<ExprOrFormula> currentChildren) {
    if (parentChildren != null) {
      ((ListFormula) listFormula.getParent()).setArguments(parentChildren);
    }
    listFormula.setArguments(currentChildren);
    listFormula.setOp(original);
  }

  public static boolean canFlatten(ListFormula listFormula) {
    ListOp rootOp = listFormula.getOp();
    for (ExprOrFormula arg : listFormula.getArguments()) {
      if (arg instanceof ListFormula) {
        ListFormula child = (ListFormula) arg;
        if (child.getOp() == rootOp) {
          return true;
        }
      }
    }
    return false;
  }

  public static void flattenListFormula(ListFormula listFormula) {
    ListOp rootOp = listFormula.getOp();
    List<ExprOrFormula> flattenedExprOrFormula = new ArrayList<>();
    for (ExprOrFormula arg : listFormula.getArguments()) {
      if (arg instanceof ListFormula) {
        ListFormula child = (ListFormula) arg;
//        flattenListFormula(child);
        if (child.getOp() == rootOp) {
          flattenedExprOrFormula.addAll(child.getArguments().stream().collect(Collectors.toList()));
          continue;
        }
      }
      flattenedExprOrFormula.add(arg);
    }
    listFormula.setArguments(flattenedExprOrFormula);
  }
}

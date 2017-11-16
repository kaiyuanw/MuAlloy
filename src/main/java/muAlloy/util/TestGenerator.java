package muAlloy.util;

import static parser.etc.Names.SLASH;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4compiler.ast.Expr;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprVar;
import edu.mit.csail.sdg.alloy4compiler.ast.Func;
import edu.mit.csail.sdg.alloy4compiler.ast.Sig;
import edu.mit.csail.sdg.alloy4compiler.parser.CompModule;
import edu.mit.csail.sdg.alloy4compiler.translator.A4Solution;
import edu.mit.csail.sdg.alloy4compiler.translator.A4Tuple;
import edu.mit.csail.sdg.alloy4compiler.translator.A4TupleSet;
import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import parser.ast.nodes.Function;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.etc.Context;
import parser.etc.Names;
import parser.util.StringUtil;

public class TestGenerator {

  public static AUnitTestCase translateToTest(
      CompModule module, A4Solution sol, Node node,
      SpecialCase specialCase, String commandName, int scope) {
    try {
      StringBuilder body = new StringBuilder();
      StringBuilder sigDecls = new StringBuilder();
      StringBuilder endParens = new StringBuilder();
      StringBuilder relAssignments = new StringBuilder();
      for (Sig sig : sol.getAllReachableSigs()) {
        String moduleAlias = StringUtil.beforeSubstring(sig.label, Names.SLASH, false);
        if (moduleAlias.equals("this")) {
          String sigName = StringUtil.afterSubstring(sig.label, Names.SLASH, false);
          A4TupleSet sigTupleSet = sol.eval(sig);
          if (sigTupleSet.size() == 0) {
            relAssignments.append("no ").append(sigName).append(Names.NEW_LINE);
          } else {
            sigDecls.append("some disj ");
            String declPrefix = "";
            relAssignments.append(sigName).append(" = ");
            String assignPrefix = "";
            for (A4Tuple tuple : sigTupleSet) {
              String sigValue = tuple.toString().replaceAll("\\$", "");
              sigDecls.append(declPrefix).append(sigValue);
              declPrefix = ", ";
              relAssignments.append(assignPrefix).append(sigValue);
              assignPrefix = " + ";
            }
            sigDecls.append(": ").append(sigName).append(" {");
            endParens.append("}");
            relAssignments.append(Names.NEW_LINE);
          }
          for (Sig.Field field : sig.getFields()) {
            A4TupleSet fieldTupleSet = sol.eval(field);
            if (fieldTupleSet.size() == 0) {
              relAssignments.append("no ").append(field.label).append(Names.NEW_LINE);
            } else {
              relAssignments.append(field.label).append(" = ");
              String assignPrefix = "";
              for (A4Tuple tuple : fieldTupleSet) {
                String fieldValue = tuple.toString().replaceAll("\\$", "");
                relAssignments.append(assignPrefix).append(fieldValue);
                assignPrefix = " + ";
              }
              relAssignments.append(Names.NEW_LINE);
            }
          }
        } else if (specialCase.getOrderingOpenDecls().stream()
            .anyMatch(openDecl -> openDecl.getAlias().equals(moduleAlias))) {
          for (Sig.Field field : sig.getFields()) {
            A4TupleSet fieldTupleSet = sol.eval(field);
            String fieldName = moduleAlias + Names.SLASH + field.label.toLowerCase();
            if (fieldTupleSet.size() == 0) {
              relAssignments.append("no ").append(fieldName).append(Names.NEW_LINE);
            } else {
              relAssignments.append(fieldName).append(" = ");
              String assignPrefix = "";
              for (A4Tuple tuple : fieldTupleSet) {
                String fieldValue = ignoreFirstKArity(tuple, 1).replaceAll("\\$", "");
                relAssignments.append(assignPrefix).append(fieldValue);
                assignPrefix = " + ";
              }
              relAssignments.append(Names.NEW_LINE);
            }
          }
        }
      }
      sigDecls.append(Names.NEW_LINE);
      endParens.append(Names.NEW_LINE);
      boolean generateCall = node instanceof Paragraph;
      if (generateCall) {
        List<String> args = new ArrayList<>();
        if (node instanceof PredOrFun) {
          List<String> argNames = new ArrayList<>();
          ((PredOrFun) node).getParamList().stream()
              .forEach(paramDecl -> argNames.addAll(paramDecl.getNames()));
          Iterable<ExprVar> skolems = sol.getAllSkolems();
          for (String argName : argNames) {
            for (ExprVar skolem : skolems) {
              String skolemName = skolem.label.substring(commandName.length() + 2);
              if (argName.equals(skolemName)) {
                A4TupleSet skolemTupleSet = (A4TupleSet) sol.eval(skolem);
                StringBuilder argVal = new StringBuilder();
                String argPrefix = "";
                for (A4Tuple skolemTuple : skolemTupleSet) {
                  argVal.append(argPrefix).append(skolemTuple.toString());
                  argPrefix = " + ";
                }
                args.add(skolemTupleSet.size() == 0 ? "none" : argVal.toString());
              }
            }
          }
          Paragraph paragraph = (Paragraph) node;
          String call = paragraph.getName().replaceAll("\\$", "_")
              + "[" + String.join(Names.COMMA, args) + "]";
          relAssignments.append(call.replaceAll("\\$", ""));
          if (node instanceof Function) {
            Func targetFun = null;
            for (Func fun : module.getAllFunc()) {
              String functionName = StringUtil.afterSubstring(fun.label, SLASH, false);
              if (!fun.isPred && functionName.equals(((Function) node).getName())) {
                targetFun = fun;
                break;
              }
            }
            assert targetFun != null;
            List<ExprVar> skolemsList = new ArrayList<>();
            skolems.forEach(skolemsList::add);
            Expr functionCall = targetFun
                .call(skolemsList.toArray(new ExprVar[skolemsList.size()]));
            A4TupleSet resultTupleSet = (A4TupleSet) sol.eval(functionCall);
            StringBuilder value = new StringBuilder();
            String prefix = "";
            for (A4Tuple resultTuple : resultTupleSet) {
              value.append(prefix).append(resultTuple.toString());
              prefix = " + ";
            }
            String resultValuation = resultTupleSet.size() == 0 ? "none" : value.toString();
            relAssignments.append(" = ").append(resultValuation.replaceAll("\\$", ""));
          }
          relAssignments.append(Names.NEW_LINE);
        }
      }
      body.append(sigDecls).append(relAssignments).append(endParens);
      return new AUnitTestCase(Names.TEST, body.toString(), scope);
    } catch (Err er) {
      Context.logger.error("<Evaluator error occurred: " + er + ">");
    }
    return null;
  }

  public static void generateAndSaveAUnitTest(
      CompModule module, A4Solution sol, Node node, MutantGeneratorOpt opt) {
    AUnitTestCase test = translateToTest(module, sol, node,
        opt.getSpecialCase(), Names.EQUIV_ASSERTION_NAME, opt.getScope());
    opt.getTests().add(test);
//    FileUtil.writeText(test, opt.getTestPath(), true);
  }

  private static String ignoreFirstKArity(A4Tuple a4Tuple, int k) {
    StringBuilder sb = new StringBuilder();
    for (int i = k; i < a4Tuple.arity(); i++) {
      if (i > k) {
        sb.append("->");
      }
      sb.append(a4Tuple.atom(i));
    }
    return sb.toString();
  }
}

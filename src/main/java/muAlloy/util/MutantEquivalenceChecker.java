package muAlloy.util;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4compiler.ast.Command;
import edu.mit.csail.sdg.alloy4compiler.parser.CompModule;
import edu.mit.csail.sdg.alloy4compiler.translator.A4Solution;
import edu.mit.csail.sdg.alloy4compiler.translator.TranslateAlloyToKodkod;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import muAlloy.opt.MutantGeneratorOpt;
import parser.ast.nodes.Assertion;
import parser.ast.nodes.Check;
import parser.ast.nodes.Fact;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.ParamDecl;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.Run;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.UnaryExpr;
import parser.ast.visitor.PrettyStringVisitor;
import parser.etc.Context;
import parser.etc.Names;
import parser.opt.Opt;
import parser.util.AlloyUtil;
import parser.util.FileUtil;

public class MutantEquivalenceChecker {

  /**
   * Build equivalence model to check sig multiplicity change.
   */
  public static String buildEquivModel(ModelUnit mu, SigDecl mutatedSigDecl, SigDecl.MULT from,
      SigDecl.MULT to, int scope) {
    String formula;
    if (from == SigDecl.MULT.SET) {
      formula = to + mutatedSigDecl.getName();
    } else if (to == SigDecl.MULT.SET) {
      formula = from + mutatedSigDecl.getName();
    } else {
      formula = from + mutatedSigDecl.getName() + " <=> " + to + mutatedSigDecl.getName();
    }
    return mu.accept(new PrettyStringVisitor(), null) + Names.NEW_LINE + Names.EQUIV_ASSERTION_NAME
        + ": check { " + formula + " } for " + scope;
  }

  /**
   * Build equivalence model to check field quantifier change.
   */
  public static String buildEquivModel(ModelUnit mu, SigDecl mutatedSigDecl,
      FieldDecl mutatedFieldDecl, UnaryExpr.UnaryOp from, UnaryExpr.UnaryOp to, int scope) {
    StringBuilder template = new StringBuilder();
    String varName = mutatedSigDecl.getName().substring(0, 1).toLowerCase();
    template.append(mu.accept(new PrettyStringVisitor(), null)).append(Names.NEW_LINE);
    String leftFormula = String.join(" && ",
        mutatedFieldDecl.getNames().stream().map(name -> from + varName + "." + name)
            .collect(Collectors.toList()));
    String rightFormula = String.join(" && ",
        mutatedFieldDecl.getNames().stream().map(name -> to + varName + "." + name)
            .collect(Collectors.toList()));
    String quantifiedPrefix = "all " + varName + ": " + mutatedSigDecl.getName() + " | ";
    String finalFormula;
    if (from == UnaryExpr.UnaryOp.SET) {
      finalFormula = quantifiedPrefix + rightFormula;
    } else if (to == UnaryExpr.UnaryOp.SET) {
      finalFormula = quantifiedPrefix + leftFormula;
    } else {
      finalFormula =
          "(" + quantifiedPrefix + leftFormula + ") <=> (" + quantifiedPrefix + rightFormula + ")";
    }
    template.append(Names.EQUIV_ASSERTION_NAME).append(": check { ").append(finalFormula)
        .append(" } for ").append(scope);
    return template.toString();
  }

  /**
   * Build equivalence model to check predicate or function change.
   */
  public static String buildEquivModel(ModelUnit mu, PredOrFun mutatedPredOrFun, int scope) {
    PrettyStringVisitor psv = new PrettyStringVisitor();
    StringBuilder template = new StringBuilder();
    template.append(mu.accept(psv, null)).append(Names.NEW_LINE);
    String originalPredOrFunName = mutatedPredOrFun.getName().replaceAll("\\$", "_");
    String mutatedPredOrFunName = originalPredOrFunName + Names.MUTATED;
    mutatedPredOrFun.setName(mutatedPredOrFunName);
    template.append(mutatedPredOrFun.accept(psv, null)).append(Names.NEW_LINE);
    boolean isPred = mutatedPredOrFun instanceof Predicate;
    List<String> varNameList = new ArrayList<>();
    List<String> argList = new ArrayList<>();
    for (ParamDecl paramDecl : mutatedPredOrFun.getParamList()) {
      String varNames = String.join(Names.COMMA, paramDecl.getNames());
      String varType = psv.visit(paramDecl.getExpr(), null);
      varNameList.add(varNames + ": " + varType);
      argList.add(varNames);
    }
    String varDecls = String.join(Names.COMMA, varNameList);
    String args = "[" + String.join(Names.COMMA, argList) + "]";
    String quantifiedPrefix = varNameList.size() == 0 ? "" : "all " + varDecls + " | ";
    template.append(Names.EQUIV_ASSERTION_NAME).append(": check { ").append(quantifiedPrefix)
        .append(originalPredOrFunName).append(args).append(isPred ? " <=> " : " = ")
        .append(mutatedPredOrFunName).append(args).append(" } for ").append(scope);
    return template.toString();
  }

  /**
   * Build equivalence model to check fact or assertion change.
   */
  public static String buildEquivModel(ModelUnit mu, Paragraph mutatedFactOrAssert, int scope) {
    PrettyStringVisitor psv = new PrettyStringVisitor() {
      @Override
      public String visit(Fact n, Object arg) {
        if (n.getName().equals(mutatedFactOrAssert.getName()) || n.getName()
            .contains(Names.MUTATED)) {
          return "pred " + n.getName().replaceAll("\\$", "_") + "[] " + n.getBody()
              .accept(this, arg);
        }
        return "fact " + n.getName().replaceAll("\\$", "_") + " " + n.getBody().accept(this, arg);
      }

      @Override
      public String visit(Assertion n, Object arg) {
        if (n.getName().equals(mutatedFactOrAssert.getName()) || n.getName()
            .contains(Names.MUTATED)) {
          return "pred " + n.getName().replaceAll("\\$", "_") + "[] " + n.getBody()
              .accept(this, arg);
        }
        return "assert " + n.getName().replaceAll("\\$", "_") + " " + n.getBody().accept(this, arg);
      }

      @Override
      public String visit(Run run, Object arg) {
        return "";
      }

      @Override
      public String visit(Check check, Object arg) {
        return "";
      }
    };
    StringBuilder template = new StringBuilder();
    template.append(mu.accept(psv, null)).append(Names.NEW_LINE);
    String originalFactOrAssertName = mutatedFactOrAssert.getName().replaceAll("\\$", "_");
    String mutatedFactOrAssertName = originalFactOrAssertName + Names.MUTATED;
    mutatedFactOrAssert.setName(mutatedFactOrAssertName);
    template.append(mutatedFactOrAssert.accept(psv, null)).append(Names.NEW_LINE);
    template.append(Names.EQUIV_ASSERTION_NAME).append(": check { ")
        .append(originalFactOrAssertName).append("[] <=> ").append(mutatedFactOrAssertName)
        .append("[] } for ").append(scope);
    return template.toString();
  }

  /**
   * Check if a mutant is equivalent to the original model.  If so, return true. Otherwise, save the
   * mutant and generate a test that kills it.
   */
  public static boolean checkEquivalenceAndGenerateTest(String equivModel, Node node, Opt opt) {
    FileUtil.writeText(equivModel, Names.EQUIV_FILE_PATH, false);
    CompModule module = AlloyUtil.compileAlloyModule(Names.EQUIV_FILE_PATH);
    assert module != null;
    Command equivCmd = module.getAllCommands().stream()
        .filter(command -> command.label.equals(Names.EQUIV_ASSERTION_NAME)).findFirst().get();
    try {
      A4Solution ans = TranslateAlloyToKodkod
          .execute_command(A4Reporter.NOP, module.getAllReachableSigs(), equivCmd,
              opt.getOptions());
      if (!ans.satisfiable()) {
        Context.logger.debug("Equivalent mutant is detected with the following model:");
        Context.logger.debug(equivModel);
        return true;
      }
      if (opt instanceof MutantGeneratorOpt) {
        TestGenerator.generateAndSaveAUnitTest(ans, node, (MutantGeneratorOpt) opt);
      }
    } catch (Err err) {
      err.printStackTrace();
    }
    return false;
  }
}

package parser.util;

import static edu.mit.csail.sdg.alloy4.Util.onMac;
import static edu.mit.csail.sdg.alloy4.Util.onWindows;
import static parser.etc.Context.logger;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4compiler.ast.Sig;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import edu.mit.csail.sdg.alloy4compiler.parser.CompModule;
import edu.mit.csail.sdg.alloy4compiler.parser.CompUtil;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import parser.ast.nodes.Assertion;
import parser.ast.nodes.Fact;
import parser.ast.nodes.Node;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryExpr.UnaryOp;
import parser.ast.visitor.PrettyStringVisitor;
import parser.etc.Names;

public class AlloyUtil {

  public static CompModule compileAlloyModule(String modelPath) {
    try {
      return CompUtil.parseEverything_fromFile(A4Reporter.NOP, null, modelPath);
    } catch (Err e) {
      logger.debug(e.getMessage());
      return null;
    }
  }

  public static boolean isValidModel(String model) {
    FileUtil.writeText(model, Names.CHECK_FILE_PATH, false);
    if (compileAlloyModule(Names.CHECK_FILE_PATH) == null) {
      logger.debug("Error model: ");
      logger.debug(model);
      return false;
    }
    return true;
  }

  public static void loadMiniSatSolver() {
    String jnilibPath;
    if (onWindows()) {
      jnilibPath = Paths.get(System.getProperty("java.library.path"), "minisat.dll")
          .toAbsolutePath().toString();
    } else if (onMac()) {
      jnilibPath = Paths.get(System.getProperty("java.library.path"), "libminisat.jnilib")
          .toAbsolutePath().toString();
    } else {
      jnilibPath = Paths.get(System.getProperty("java.library.path"), "libminisat.so")
          .toAbsolutePath().toString();
    }
    System.load(jnilibPath);
  }

  public static boolean isHomogeneous(Type type) {
    List<Sig.PrimSig> flattenTypes = type.fold().stream().flatMap(List::stream)
        .collect(Collectors.toList());
    return flattenTypes.size() == 2 && flattenTypes.get(0).equals(flattenTypes.get(1));
  }

  /**
   * Construct a string from a node recursively to its closest parent which is of type SigDecl,
   * Predicate, Funtion, Fact or Assertion.
   */
  public static String computeNodePathAsString(Node node, PrettyStringVisitor psv) {
    List<String> res = new ArrayList<>();
    Node cur = node;
    while (cur != null) {
      if (res.size() != 0 && cur instanceof UnaryExpr
          && ((UnaryExpr) cur).getOp() == UnaryOp.NOOP) {
        cur = cur.getParent();
        continue;
      }
      res.add(cur.accept(psv, null));
      if (cur instanceof SigDecl || cur instanceof PredOrFun || cur instanceof Fact
          || cur instanceof Assertion) {
        break;
      }
      cur = cur.getParent();
    }
    Collections.reverse(res);
    return String.join(Names.NEW_LINE + Names.VERTICAL_BAR + Names.NEW_LINE, res);
  }

  public static Node getFirstNonNOOPChild(Node node) {
    Node cur = node;
    while (cur instanceof UnaryExpr) {
      UnaryExpr unaryExpr = (UnaryExpr) cur;
      if (unaryExpr.getOp() != UnaryOp.NOOP) {
        break;
      }
      cur = unaryExpr.getSub();
    }
    return cur;
  }
}

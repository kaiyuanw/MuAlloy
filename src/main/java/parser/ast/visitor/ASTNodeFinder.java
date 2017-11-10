package parser.ast.visitor;

import java.util.ArrayList;
import java.util.List;
import java.util.function.BiFunction;
import parser.ast.nodes.Assertion;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.Body;
import parser.ast.nodes.CallExpr;
import parser.ast.nodes.CallFormula;
import parser.ast.nodes.Check;
import parser.ast.nodes.ConstExpr;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.Fact;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.FieldExpr;
import parser.ast.nodes.Function;
import parser.ast.nodes.ITEExpr;
import parser.ast.nodes.ITEFormula;
import parser.ast.nodes.LetExpr;
import parser.ast.nodes.ListExpr;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.ModuleDecl;
import parser.ast.nodes.Node;
import parser.ast.nodes.OpenDecl;
import parser.ast.nodes.ParamDecl;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.QtExpr;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.Run;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.SigExpr;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.nodes.VarDecl;
import parser.ast.nodes.VarExpr;
import parser.etc.Pair;

public class ASTNodeFinder extends VoidVisitorAdapter<Pair<Class<?>, String>> {

  private BiFunction<String, String, Boolean> matchFunction;
  private List<Node> result;
  private ASTNodeFinder(boolean exactMatch) {
    if (exactMatch) {
      this.matchFunction = String::equals;
    } else {
      this.matchFunction = String::contains;
    }
    this.result = new ArrayList<>();
  }

  public static List<Node> findNodesByTypeAndName(Node node, Class<?> clazz, String name,
      boolean exactMatch) {
    ASTNodeFinder finder = new ASTNodeFinder(exactMatch);
    node.accept(finder, Pair.of(clazz, name));
    return finder.result;
  }

  @Override
  public void visit(ModelUnit n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ModuleDecl n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getModelName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(OpenDecl n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(SigDecl n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(FieldDecl n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && n.getNames().stream()
        .anyMatch(name -> matchFunction.apply(arg.b, name))) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(ParamDecl n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && n.getNames().stream()
        .anyMatch(name -> matchFunction.apply(arg.b, name))) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(VarDecl n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && n.getNames().stream()
        .anyMatch(name -> matchFunction.apply(arg.b, name))) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(ExprOrFormula n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(SigExpr n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(FieldExpr n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(VarExpr n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(UnaryExpr n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(UnaryFormula n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(BinaryExpr n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(BinaryFormula n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ListExpr n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ListFormula n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(CallExpr n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(CallFormula n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(QtExpr n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(QtFormula n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ITEExpr n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ITEFormula n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(LetExpr n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ConstExpr n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getValue())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(Body n, Pair<Class<?>, String> arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(Predicate n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(Function n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(Fact n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(Assertion n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(Run n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(Check n, Pair<Class<?>, String> arg) {
    if (n.getClass() == arg.a && matchFunction.apply(arg.b, n.getName())) {
      result.add(n);
    }
    super.visit(n, arg);
  }
}
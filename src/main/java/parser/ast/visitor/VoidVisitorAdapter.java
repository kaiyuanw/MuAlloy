package parser.ast.visitor;

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

public class VoidVisitorAdapter<A> implements VoidVisitor<A> {

  @Override
  public void visit(ModelUnit n, A arg) {
    n.getModuleDecl().accept(this, arg);
    n.getOpenDeclList().stream().forEach(openDecl -> openDecl.accept(this, arg));
    n.getSigDeclList().stream().forEach(signature -> signature.accept(this, arg));
    n.getPredDeclList().stream().forEach(predicate -> predicate.accept(this, arg));
    n.getFunDeclList().stream().forEach(function -> function.accept(this, arg));
    n.getFactDeclList().stream().forEach(fact -> fact.accept(this, arg));
    n.getAssertDeclList().stream().forEach(assertion -> assertion.accept(this, arg));
    n.getRunCmdList().stream().forEach(run -> run.accept(this, arg));
    n.getCheckCmdList().stream().forEach(check -> check.accept(this, arg));
  }

  @Override
  public void visit(ModuleDecl n, A arg) {
  }

  @Override
  public void visit(OpenDecl n, A arg) {
  }

  @Override
  public void visit(SigDecl n, A arg) {
    n.getFieldList().stream().forEach(field -> field.accept(this, arg));
    if (n.hasSigFact()) {
      n.getSigFact().accept(this, arg);
    }
  }

  @Override
  public void visit(FieldDecl n, A arg) {
    n.getExpr().accept(this, arg);
  }

  @Override
  public void visit(ParamDecl n, A arg) {
    n.getExpr().accept(this, arg);
  }

  @Override
  public void visit(VarDecl n, A arg) {
    n.getExpr().accept(this, arg);
  }

  @Override
  public void visit(ExprOrFormula n, A arg) {
    n.accept(this, arg);
  }

  @Override
  public void visit(SigExpr n, A arg) {
  }

  @Override
  public void visit(FieldExpr n, A arg) {
  }

  @Override
  public void visit(VarExpr n, A arg) {
  }

  @Override
  public void visit(UnaryExpr n, A arg) {
    n.getSub().accept(this, arg);
  }

  @Override
  public void visit(UnaryFormula n, A arg) {
    n.getSub().accept(this, arg);
  }

  @Override
  public void visit(BinaryExpr n, A arg) {
    n.getLeft().accept(this, arg);
    n.getRight().accept(this, arg);
  }

  @Override
  public void visit(BinaryFormula n, A arg) {
    n.getLeft().accept(this, arg);
    n.getRight().accept(this, arg);
  }

  @Override
  public void visit(ListExpr n, A arg) {
    n.getArguments().stream().forEach(expr -> expr.accept(this, arg));
  }

  @Override
  public void visit(ListFormula n, A arg) {
    n.getArguments().stream().forEach(expr -> expr.accept(this, arg));
  }

  @Override
  public void visit(CallExpr n, A arg) {
    n.getArguments().stream().forEach(argument -> argument.accept(this, arg));
  }

  @Override
  public void visit(CallFormula n, A arg) {
    n.getArguments().stream().forEach(argument -> argument.accept(this, arg));
  }

  @Override
  public void visit(QtExpr n, A arg) {
    n.getVarDecls().stream().forEach(varDecl -> varDecl.accept(this, arg));
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(QtFormula n, A arg) {
    n.getVarDecls().stream().forEach(varDecl -> varDecl.accept(this, arg));
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(ITEExpr n, A arg) {
    n.getCondition().accept(this, arg);
    n.getThenClause().accept(this, arg);
    n.getElseClause().accept(this, arg);
  }

  @Override
  public void visit(ITEFormula n, A arg) {
    n.getCondition().accept(this, arg);
    n.getThenClause().accept(this, arg);
    n.getElseClause().accept(this, arg);
  }

  @Override
  public void visit(LetExpr n, A arg) {
    n.getVar().accept(this, arg);
    n.getBound().accept(this, arg);
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(ConstExpr n, A arg) {
  }

  @Override
  public void visit(Body n, A arg) {
    n.getBodyExpr().accept(this, arg);
  }

  @Override
  public void visit(Predicate n, A arg) {
    n.getParamList().stream().forEach(parameter -> parameter.accept(this, arg));
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(Function n, A arg) {
    n.getParamList().stream().forEach(parameter -> parameter.accept(this, arg));
    n.getReturnType().accept(this, arg);
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(Fact n, A arg) {
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(Assertion n, A arg) {
    n.getBody().accept(this, arg);
  }

  @Override
  public void visit(Run n, A arg) {
  }

  @Override
  public void visit(Check n, A arg) {
  }
}

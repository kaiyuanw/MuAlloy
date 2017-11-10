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

public interface VoidVisitor<A> {

  void visit(ModelUnit n, A arg);

  void visit(ModuleDecl n, A arg);

  void visit(OpenDecl n, A arg);

  void visit(SigDecl n, A arg);

  void visit(FieldDecl n, A arg);

  void visit(ParamDecl n, A arg);

  void visit(VarDecl n, A arg);

  void visit(ExprOrFormula n, A arg);

  void visit(SigExpr n, A arg);

  void visit(FieldExpr n, A arg);

  void visit(VarExpr n, A arg);

  void visit(UnaryExpr n, A arg);

  void visit(UnaryFormula n, A arg);

  void visit(BinaryExpr n, A arg);

  void visit(BinaryFormula n, A arg);

  void visit(ListExpr n, A arg);

  void visit(ListFormula n, A arg);

  void visit(CallExpr n, A arg);

  void visit(CallFormula n, A arg);

  void visit(QtExpr n, A arg);

  void visit(QtFormula n, A arg);

  void visit(ITEExpr n, A arg);

  void visit(ITEFormula n, A arg);

  void visit(LetExpr n, A arg);

  void visit(ConstExpr n, A arg);

  void visit(Body n, A arg);

  void visit(Predicate n, A arg);

  void visit(Function n, A arg);

  void visit(Fact n, A arg);

  void visit(Assertion n, A arg);

  void visit(Run n, A arg);

  void visit(Check n, A arg);
}

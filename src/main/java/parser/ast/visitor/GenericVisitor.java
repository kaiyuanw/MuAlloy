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

public interface GenericVisitor<R, A> {

  R visit(ModelUnit n, A arg);

  R visit(ModuleDecl n, A arg);

  R visit(OpenDecl n, A arg);

  R visit(SigDecl n, A arg);

  R visit(FieldDecl n, A arg);

  R visit(ParamDecl n, A arg);

  R visit(VarDecl n, A arg);

  R visit(ExprOrFormula n, A arg);

  R visit(SigExpr n, A arg);

  R visit(FieldExpr n, A arg);

  R visit(VarExpr n, A arg);

  R visit(UnaryExpr n, A arg);

  R visit(UnaryFormula n, A arg);

  R visit(BinaryExpr n, A arg);

  R visit(BinaryFormula n, A arg);

  R visit(ListExpr n, A arg);

  R visit(ListFormula n, A arg);

  R visit(CallExpr n, A arg);

  R visit(CallFormula n, A arg);

  R visit(QtExpr n, A arg);

  R visit(QtFormula n, A arg);

  R visit(ITEExpr n, A arg);

  R visit(ITEFormula n, A arg);

  R visit(LetExpr n, A arg);

  R visit(ConstExpr n, A arg);

  R visit(Body n, A arg);

  R visit(Predicate n, A arg);

  R visit(Function n, A arg);

  R visit(Fact n, A arg);

  R visit(Assertion n, A arg);

  R visit(Run n, A arg);

  R visit(Check n, A arg);
}

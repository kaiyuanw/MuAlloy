package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Expr;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class Body extends Node {

  protected ExprOrFormula bodyExpr;

  public Body(Node parent, Expr expr) {
    super(parent);
    this.bodyExpr = ExprOrFormula.buildExpression(this, expr);
  }

  public Body(Node parent, ExprOrFormula bodyExpr) {
    super(parent);
    this.bodyExpr = bodyExpr;
  }

  public Body() {
    super();
  }

  public ExprOrFormula getBodyExpr() {
    return bodyExpr;
  }

  public void setBodyExpr(ExprOrFormula bodyExpr) {
    this.bodyExpr = bodyExpr;
  }

  @Override
  public <R, A> R accept(GenericVisitor<R, A> v, A arg) {
    return v.visit(this, arg);
  }

  @Override
  public <A> void accept(VoidVisitor<A> v, A arg) {
    v.visit(this, arg);
  }
}

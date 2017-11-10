package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprLet;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class LetExpr extends ExprOrFormula {

  protected ExprOrFormula var;
  protected ExprOrFormula bound;
  protected Body body;

  public LetExpr(Node parent, ExprLet expr) {
    super(parent, expr.type());
    this.var = buildExpression(this, expr.var);
    this.bound = buildExpression(this, expr.expr);
    this.body = new Body(this, expr.sub);
  }

  public LetExpr(Node parent, Type type, ExprOrFormula var, ExprOrFormula bound, Body body) {
    super(parent, type);
    this.var = var;
    this.bound = bound;
    this.body = body;
  }

  public LetExpr() {
    super();
  }

  public ExprOrFormula getVar() {
    return var;
  }

  public void setVar(ExprOrFormula var) {
    this.var = var;
  }

  public ExprOrFormula getBound() {
    return bound;
  }

  public void setBound(ExprOrFormula bound) {
    this.bound = bound;
  }

  public Body getBody() {
    return body;
  }

  public void setBody(Body body) {
    this.body = body;
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

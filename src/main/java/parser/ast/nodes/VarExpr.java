package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprVar;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class VarExpr extends ExprOrFormula {

  protected String name;

  public VarExpr(Node parent, ExprVar expr) {
    super(parent, expr.type());
    this.name = expr.label;
  }

  public VarExpr(Node parent, Type type, String name) {
    super(parent, type);
    this.name = name;
  }

  public VarExpr() {
    super();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
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

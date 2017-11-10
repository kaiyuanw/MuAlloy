package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprConstant;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class ConstExpr extends ExprOrFormula {

  protected String value;

  public ConstExpr(Node parent, ExprConstant expr) {
    super(parent, expr.type());
    this.value = findValue(expr);
  }

  public ConstExpr(Node parent, Type type, String value) {
    super(parent, type);
    this.value = value;
  }

  public ConstExpr() {
    super();
  }

  private String findValue(ExprConstant expr) {
    switch (expr.op) {
      case IDEN:
      case EMPTYNESS:
        return expr.op.toString();
      case STRING:
        return expr.string;
      case NUMBER:
        return String.valueOf(expr.num);
      default:
        return "";
    }
  }

  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
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

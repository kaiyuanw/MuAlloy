package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprList;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.exception.UnsupportedOptionException;

public class ListFormula extends ListExprOrFormula {

  protected ListOp op;

  public ListFormula(Node parent, ExprList exprList) {
    super(parent, exprList);
    this.op = findOp(exprList);
  }

  public ListFormula(Node parent, Type type, List<ExprOrFormula> args, ListOp op) {
    super(parent, type, args);
    this.op = op;
  }

  public ListFormula() {
    super();
  }

  private ListOp findOp(ExprList expr) {
    switch (expr.op) {
      case AND:
        return ListOp.AND;
      case OR:
        return ListOp.OR;
      default:
        throw new UnsupportedOptionException("Unsupported op " + expr.op.toString());
    }
  }

  public ListOp getOp() {
    return op;
  }

  public void setOp(ListOp op) {
    this.op = op;
  }

  @Override
  public <R, A> R accept(GenericVisitor<R, A> v, A arg) {
    return v.visit(this, arg);
  }

  @Override
  public <A> void accept(VoidVisitor<A> v, A arg) {
    v.visit(this, arg);
  }

  public enum ListOp {
    AND("&&"),
    OR("||");

    private String label;

    ListOp(String label) {
      this.label = label;
    }

    @Override
    public String toString() {
      switch (this) {
        case AND:
        case OR:
        default:
          return " " + label + " ";
      }
    }

    public String getLabel() {
      return label;
    }
  }
}

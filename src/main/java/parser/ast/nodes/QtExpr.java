package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprQt;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.exception.UnsupportedOptionException;

public class QtExpr extends QtExprOrFormula {

  protected Quantifier op;

  public QtExpr(Node parent, ExprQt expr) {
    super(parent, expr);
    this.op = findOp(expr);
  }

  public QtExpr(Node parent, Type type, List<VarDecl> varDecls, Body body, Quantifier op) {
    super(parent, type, varDecls, body);
    this.op = op;
  }

  public QtExpr() {
    super();
  }

  private Quantifier findOp(ExprQt expr) {
    switch (expr.op) {
      case SUM:
        return Quantifier.SUM;
      case COMPREHENSION:
        return Quantifier.COMPREHENSION;
      default:
        throw new UnsupportedOptionException("Unsupported quantifier " + expr.op.toString());
    }
  }

  public Quantifier getOp() {
    return op;
  }

  public void setOp(Quantifier op) {
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

  public enum Quantifier {
    SUM("sum"),
    COMPREHENSION("");

    private String label;

    Quantifier(String label) {
      this.label = label;
    }

    @Override
    public String toString() {
      switch (this) {
        case COMPREHENSION:
          return label;
        default:
          return label + " ";
      }
    }

    public String getLabel() {
      return label;
    }
  }
}

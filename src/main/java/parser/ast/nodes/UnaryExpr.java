package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprUnary;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.exception.UnsupportedOptionException;

public class UnaryExpr extends UnaryExprOrFormula {

  protected UnaryOp op;

  public UnaryExpr(Node parent, ExprUnary expr) {
    super(parent, expr);
    this.op = findOp(expr);
  }

  public UnaryExpr(Node parent, Type type, ExprOrFormula sub, UnaryOp op) {
    super(parent, type, sub);
    this.op = op;
  }

  public UnaryExpr() {
    super();
  }

  private UnaryOp findOp(ExprUnary expr) {
    switch (expr.op) {
      case SETOF:
        return UnaryOp.SET;
      case LONEOF:
        return UnaryOp.LONE;
      case ONEOF:
        return UnaryOp.ONE;
      case SOMEOF:
        return UnaryOp.SOME;
      case EXACTLYOF:
        return UnaryOp.EXACTLYOF;
      case TRANSPOSE:
        return UnaryOp.TRANSPOSE;
      case RCLOSURE:
        return UnaryOp.RCLOSURE;
      case CLOSURE:
        return UnaryOp.CLOSURE;
      case CARDINALITY:
        return UnaryOp.CARDINALITY;
      case CAST2INT:
        return UnaryOp.CAST2INT;
      case CAST2SIGINT:
        return UnaryOp.CAST2SIGINT;
      case NOOP:
        return UnaryOp.NOOP;
      default:
        throw new UnsupportedOptionException("Unsupported unary operator " + expr.op.toString());
    }
  }

  public UnaryOp getOp() {
    return op;
  }

  public void setOp(UnaryOp op) {
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

  public enum UnaryOp {
    SET("set", Group.REL_DECL),
    LONE("lone", Group.REL_DECL),
    ONE("one", Group.REL_DECL),
    SOME("some", Group.REL_DECL),
    EXACTLYOF("exactly", Group.IGNORE),
    TRANSPOSE("~", Group.TRANSPOSE),
    RCLOSURE("*", Group.CLOSURE),
    CLOSURE("^", Group.CLOSURE),
    CARDINALITY("#", Group.CARD),
    CAST2INT("Int->int", Group.IGNORE),
    CAST2SIGINT("int->Int", Group.IGNORE),
    NOOP("", Group.NOOP);

    private String label;
    private Group group;

    UnaryOp(String label, Group group) {
      this.label = label;
      this.group = group;
    }

    @Override
    public String toString() {
      switch (this) {
        case TRANSPOSE:
        case RCLOSURE:
        case CLOSURE:
        case CARDINALITY:
          return label;
        case CAST2INT:
        case CAST2SIGINT:
        case NOOP:
          return "";
        default:
          return label + " ";
      }
    }

    public String getLabel() {
      return label;
    }

    public Group getGroup() {
      return group;
    }

    public enum Group {
      REL_DECL,
      CLOSURE,
      CARD,
      TRANSPOSE,
      NOOP,
      IGNORE
    }
  }
}

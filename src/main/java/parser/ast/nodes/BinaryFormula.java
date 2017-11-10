package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprBinary;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.exception.UnsupportedOptionException;

public class BinaryFormula extends BinaryExprOrFormula {

  protected BinaryOp op;

  public BinaryFormula(Node parent, ExprBinary expr) {
    super(parent, expr);
    this.op = findOp(expr);
  }

  public BinaryFormula(Node parent, Type type, ExprOrFormula left, ExprOrFormula right,
      BinaryOp op) {
    super(parent, type, left, right);
    this.op = op;
  }

  public BinaryFormula() {
    super();
  }

  private BinaryOp findOp(ExprBinary expr) {
    switch (expr.op) {
      case EQUALS:
        return BinaryOp.EQUALS;
      case NOT_EQUALS:
        return BinaryOp.NOT_EQUALS;
      case IMPLIES:
        return BinaryOp.IMPLIES;
      case LT:
        return BinaryOp.LT;
      case LTE:
        return BinaryOp.LTE;
      case GT:
        return BinaryOp.GT;
      case GTE:
        return BinaryOp.GTE;
      case NOT_LT:
        return BinaryOp.NOT_LT;
      case NOT_LTE:
        return BinaryOp.NOT_LTE;
      case NOT_GT:
        return BinaryOp.NOT_GT;
      case NOT_GTE:
        return BinaryOp.NOT_GTE;
      case IN:
        return BinaryOp.IN;
      case NOT_IN:
        return BinaryOp.NOT_IN;
      case AND:
        return BinaryOp.AND;
      case OR:
        return BinaryOp.OR;
      case IFF:
        return BinaryOp.IFF;
      default:
        throw new UnsupportedOptionException("Unsupported binary operator " + expr.op.toString());
    }
  }

  public BinaryOp getOp() {
    return op;
  }

  public void setOp(BinaryOp op) {
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

  public enum BinaryOp {
    EQUALS("=", Group.SET_OPERATION),
    NOT_EQUALS("!=", Group.SET_OPERATION),
    IMPLIES("=>", Group.IMPLICATION),
    LT("<", Group.ARITHMETIC),
    LTE("<=", Group.ARITHMETIC),
    GT(">", Group.ARITHMETIC),
    GTE(">=", Group.ARITHMETIC),
    NOT_LT("!<", Group.ARITHMETIC),
    NOT_LTE("!<=", Group.ARITHMETIC),
    NOT_GT("!>", Group.ARITHMETIC),
    NOT_GTE("!>=", Group.ARITHMETIC),
    IN("in", Group.SET_OPERATION),
    NOT_IN("!in", Group.SET_OPERATION),
    AND("&&", Group.IGNORED),
    OR("||", Group.IGNORED),
    IFF("<=>", Group.IMPLICATION);

    private String label;
    private Group group;

    BinaryOp(String label, Group group) {
      this.label = label;
      this.group = group;
    }

    @Override
    public String toString() {
      return " " + label + " ";
    }

    public Group getGroup() {
      return group;
    }

    public boolean isCommutative() {
      switch (this) {
        case EQUALS:
        case NOT_EQUALS:
        case AND:
        case OR:
        case IFF:
          return true;
        default:
          return false;
      }
    }

    public enum Group {
      IMPLICATION,
      SET_OPERATION,
      ARITHMETIC,
      IGNORED
    }
  }
}

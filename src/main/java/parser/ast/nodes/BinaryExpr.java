package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprBinary;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.exception.UnsupportedOptionException;

public class BinaryExpr extends BinaryExprOrFormula {

  protected BinaryOp op;

  public BinaryExpr(Node parent, ExprBinary expr) {
    super(parent, expr);
    this.op = findOp(expr);
  }

  public BinaryExpr(Node parent, Type type, ExprOrFormula left, ExprOrFormula right, BinaryOp op) {
    super(parent, type, left, right);
    this.op = op;
  }

  public BinaryExpr() {
    super();
  }

  private BinaryOp findOp(ExprBinary expr) {
    switch (expr.op) {
      case ARROW:
        return BinaryOp.ARROW;
      case ANY_ARROW_SOME:
        return BinaryOp.ANY_ARROW_SOME;
      case ANY_ARROW_ONE:
        return BinaryOp.ANY_ARROW_ONE;
      case ANY_ARROW_LONE:
        return BinaryOp.ANY_ARROW_LONE;
      case SOME_ARROW_ANY:
        return BinaryOp.SOME_ARROW_ANY;
      case SOME_ARROW_SOME:
        return BinaryOp.SOME_ARROW_SOME;
      case SOME_ARROW_ONE:
        return BinaryOp.SOME_ARROW_ONE;
      case SOME_ARROW_LONE:
        return BinaryOp.SOME_ARROW_LONE;
      case ONE_ARROW_ANY:
        return BinaryOp.ONE_ARROW_ANY;
      case ONE_ARROW_SOME:
        return BinaryOp.ONE_ARROW_SOME;
      case ONE_ARROW_ONE:
        return BinaryOp.ONE_ARROW_ONE;
      case ONE_ARROW_LONE:
        return BinaryOp.ONE_ARROW_LONE;
      case LONE_ARROW_ANY:
        return BinaryOp.LONE_ARROW_ANY;
      case LONE_ARROW_SOME:
        return BinaryOp.LONE_ARROW_SOME;
      case LONE_ARROW_ONE:
        return BinaryOp.LONE_ARROW_ONE;
      case LONE_ARROW_LONE:
        return BinaryOp.LONE_ARROW_LONE;
      case ISSEQ_ARROW_LONE:
        return BinaryOp.ISSEQ_ARROW_LONE;
      case JOIN:
        return BinaryOp.JOIN;
      case DOMAIN:
        return BinaryOp.DOMAIN;
      case RANGE:
        return BinaryOp.RANGE;
      case INTERSECT:
        return BinaryOp.INTERSECT;
      case PLUSPLUS:
        return BinaryOp.PLUSPLUS;
      case PLUS:
        return BinaryOp.PLUS;
      case IPLUS:
        return BinaryOp.IPLUS;
      case MINUS:
        return BinaryOp.MINUS;
      case IMINUS:
        return BinaryOp.IMINUS;
      case MUL:
        return BinaryOp.MUL;
      case DIV:
        return BinaryOp.DIV;
      case REM:
        return BinaryOp.REM;
      case SHL:
        return BinaryOp.SHL;
      case SHA:
        return BinaryOp.SHA;
      case SHR:
        return BinaryOp.SHR;
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
    ARROW("->", Group.CROSS_PRODUCT),
    ANY_ARROW_SOME("->some", Group.IGNORED),
    ANY_ARROW_ONE("->one", Group.IGNORED),
    ANY_ARROW_LONE("->lone", Group.IGNORED),
    SOME_ARROW_ANY("some->", Group.IGNORED),
    SOME_ARROW_SOME("some->some", Group.IGNORED),
    SOME_ARROW_ONE("some->one", Group.IGNORED),
    SOME_ARROW_LONE("some->lone", Group.IGNORED),
    ONE_ARROW_ANY("one->", Group.IGNORED),
    ONE_ARROW_SOME("one->some", Group.IGNORED),
    ONE_ARROW_ONE("one->one", Group.IGNORED),
    ONE_ARROW_LONE("one->lone", Group.IGNORED),
    LONE_ARROW_ANY("lone->", Group.IGNORED),
    LONE_ARROW_SOME("lone->some", Group.IGNORED),
    LONE_ARROW_ONE("lone->one", Group.IGNORED),
    LONE_ARROW_LONE("lone->lone", Group.IGNORED),
    ISSEQ_ARROW_LONE("isSeq->lone", Group.IGNORED),
    JOIN(".", Group.JOIN),
    DOMAIN("<:", Group.IGNORED),
    RANGE(":>", Group.IGNORED),
    INTERSECT("&", Group.SET_OPERATION),
    PLUSPLUS("++", Group.IGNORED),
    PLUS("+", Group.SET_OPERATION),
    IPLUS("@+", Group.ARITHMETIC),
    MINUS("-", Group.SET_OPERATION),
    IMINUS("@-", Group.ARITHMETIC),
    MUL("*", Group.ARITHMETIC),
    DIV("/", Group.ARITHMETIC),
    REM("%", Group.ARITHMETIC),
    SHL("<<", Group.ARITHMETIC),
    SHA(">>", Group.ARITHMETIC),
    SHR(">>>", Group.ARITHMETIC);

    private String label;
    private Group group;

    BinaryOp(String label, Group group) {
      this.label = label;
      this.group = group;
    }

    @Override
    public String toString() {
      switch (this) {
        case ARROW:
        case JOIN:
          return label;
        case ANY_ARROW_SOME:
        case ANY_ARROW_ONE:
        case ANY_ARROW_LONE:
          return label + " ";
        case SOME_ARROW_ANY:
        case ONE_ARROW_ANY:
        case LONE_ARROW_ANY:
          return " " + label;
        default:
          return " " + label + " ";
      }
    }

    public Group getGroup() {
      return group;
    }

    public boolean isCommutative() {
      switch (this) {
        case INTERSECT:
        case PLUS:
        case IPLUS:
        case MUL:
          return true;
        default:
          return false;
      }
    }

    public enum Group {
      CROSS_PRODUCT,
      JOIN,
      SET_OPERATION,
      ARITHMETIC,
      IGNORED
    }
  }
}

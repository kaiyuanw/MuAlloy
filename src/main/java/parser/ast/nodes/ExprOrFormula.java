package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Expr;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprBinary;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprCall;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprConstant;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprITE;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprLet;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprList;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprQt;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprUnary;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprVar;
import edu.mit.csail.sdg.alloy4compiler.ast.Sig;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.exception.UnsupportedOptionException;
import parser.util.AlloyUtil;

public abstract class ExprOrFormula extends Node {

  protected transient Type type;

  public ExprOrFormula(Node parent, Type type) {
    super(parent);
    this.type = type;
  }

  public ExprOrFormula() {
    super();
  }

  public static ExprOrFormula buildExpression(Node parent, Expr expr) {
    if (expr instanceof ExprUnary) {
      ExprUnary unaryExpr = (ExprUnary) expr;
      switch (unaryExpr.op) {
        case NOT:
          // Wrap ! with NOOP for UOD.
          UnaryExpr wrapper = new UnaryExpr(parent, unaryExpr.type(), null, UnaryExpr.UnaryOp.NOOP);
          wrapper.setSub(new UnaryFormula(wrapper, unaryExpr));
          return wrapper;
        case LONE:
        case ONE:
        case SOME:
        case NO:
          return new UnaryFormula(parent, unaryExpr);
        case CAST2INT:
        case CAST2SIGINT:
        case NOOP:
          return buildExpression(parent, unaryExpr.sub);
        case RCLOSURE:
        case CLOSURE:
        case TRANSPOSE:
          // Wrap [*,^,~] with NOOP for UOD.
          wrapper = new UnaryExpr(parent, unaryExpr.type(), null, UnaryExpr.UnaryOp.NOOP);
          wrapper.setSub(new UnaryExpr(wrapper, unaryExpr));
          return wrapper;
        default:
          // Wrap homogeneous binary relation with NOOP for UOI.
          if (AlloyUtil.isHomogeneous(unaryExpr.type())) {
            wrapper = new UnaryExpr(parent, unaryExpr.type(), null, UnaryExpr.UnaryOp.NOOP);
            wrapper.setSub(new UnaryExpr(wrapper, unaryExpr));
            return wrapper;
          }
          return new UnaryExpr(parent, unaryExpr);
      }
    } else if (expr instanceof ExprBinary) {
      ExprBinary binaryExpr = (ExprBinary) expr;
      switch (binaryExpr.op) {
        case EQUALS:
        case NOT_EQUALS:
        case IMPLIES:
        case IFF:
        case LT:
        case LTE:
        case GT:
        case GTE:
        case NOT_LT:
        case NOT_LTE:
        case NOT_GT:
        case NOT_GTE:
        case IN:
        case NOT_IN:
        case AND:
        case OR:
          return new BinaryFormula(parent, binaryExpr);
        default:
          // Wrap homogeneous binary relation with NOOP for UOI.
          if (AlloyUtil.isHomogeneous(binaryExpr.type())) {
            UnaryExpr wrapper = new UnaryExpr(parent, binaryExpr.type(), null,
                UnaryExpr.UnaryOp.NOOP);
            wrapper.setSub(new BinaryExpr(wrapper, binaryExpr));
            return wrapper;
          }
          return new BinaryExpr(parent, binaryExpr);
      }
    } else if (expr instanceof Sig) {
      return new SigExpr(parent, (Sig) expr);
    } else if (expr instanceof Sig.Field) {
      Sig.Field fieldExpr = (Sig.Field) expr;
      // Wrap homogeneous binary relation with NOOP for UOI.
      if (AlloyUtil.isHomogeneous(fieldExpr.type())) {
        UnaryExpr wrapper = new UnaryExpr(parent, fieldExpr.type(), null, UnaryExpr.UnaryOp.NOOP);
        wrapper.setSub(new FieldExpr(wrapper, fieldExpr));
        return wrapper;
      }
      return new FieldExpr(parent, fieldExpr);
    } else if (expr instanceof ExprList) {
      ExprList listExpr = (ExprList) expr;
      switch (listExpr.op) {
        case AND:
        case OR:
          return new ListFormula(parent, listExpr);
        default:
          return new ListExpr(parent, listExpr);
      }
    } else if (expr instanceof ExprCall) {
      ExprCall exprCall = (ExprCall) expr;
      if (exprCall.fun.isPred) {
        return new CallFormula(parent, exprCall);
      }
      return new CallExpr(parent, exprCall);
    } else if (expr instanceof ExprVar) {
      ExprVar exprVar = (ExprVar) expr;
      // Wrap homogeneous binary relation with NOOP for UOI.
      if (AlloyUtil.isHomogeneous(exprVar.type())) {
        UnaryExpr wrapper = new UnaryExpr(parent, exprVar.type(), null, UnaryExpr.UnaryOp.NOOP);
        wrapper.setSub(new VarExpr(wrapper, exprVar));
        return wrapper;
      }
      return new VarExpr(parent, exprVar);
    } else if (expr instanceof ExprQt) {
      ExprQt qtExpr = (ExprQt) expr;
      switch (qtExpr.op) {
        case SUM:
        case COMPREHENSION:
          return new QtExpr(parent, qtExpr);
        default:
          return new QtFormula(parent, qtExpr);
      }
    } else if (expr instanceof ExprITE) {
      ExprITE ite = (ExprITE) expr;
      if (ite.type().is_bool) {
        return new ITEFormula(parent, ite);
      }
      return new ITEExpr(parent, ite);
    } else if (expr instanceof ExprLet) {
      return new LetExpr(parent, (ExprLet) expr);
    } else if (expr instanceof ExprConstant) {
      return new ConstExpr(parent, (ExprConstant) expr);
    } else {
      throw new UnsupportedOptionException("Unsupported expression type " + expr.getClass());
    }
  }

  public Type getType() {
    return type;
  }

  public void setType(Type type) {
    this.type = type;
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

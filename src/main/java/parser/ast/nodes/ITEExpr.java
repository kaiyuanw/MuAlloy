package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprITE;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class ITEExpr extends ITEExprOrFormula {

  public ITEExpr(Node parent, ExprITE expr) {
    super(parent, expr);
  }

  public ITEExpr(Node parent, Type type, ExprOrFormula condition, ExprOrFormula thenClause,
      ExprOrFormula elseClause) {
    super(parent, type, condition, thenClause, elseClause);
  }

  public ITEExpr() {
    super();
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

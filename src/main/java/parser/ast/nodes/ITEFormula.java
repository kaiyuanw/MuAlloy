package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprITE;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class ITEFormula extends ITEExprOrFormula {

  public ITEFormula(Node parent, ExprITE expr) {
    super(parent, expr);
  }

  public ITEFormula(Node parent, Type type, ExprOrFormula condition, ExprOrFormula thenClause,
      ExprOrFormula elseClause) {
    super(parent, type, condition, thenClause, elseClause);
  }

  public ITEFormula() {
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

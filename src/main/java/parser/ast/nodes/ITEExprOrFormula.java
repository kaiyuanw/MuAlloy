package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprITE;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;

public abstract class ITEExprOrFormula extends ExprOrFormula {

  protected ExprOrFormula condition;
  protected ExprOrFormula thenClause;
  protected ExprOrFormula elseClause;

  public ITEExprOrFormula(Node parent, ExprITE expr) {
    super(parent, expr.type());
    this.condition = buildExpression(this, expr.cond);
    this.thenClause = buildExpression(this, expr.left);
    this.elseClause = buildExpression(this, expr.right);
  }

  public ITEExprOrFormula(Node parent, Type type, ExprOrFormula condition, ExprOrFormula thenClause,
      ExprOrFormula elseClause) {
    super(parent, type);
    this.condition = condition;
    this.thenClause = thenClause;
    this.elseClause = elseClause;
  }

  public ITEExprOrFormula() {
    super();
  }

  public ExprOrFormula getCondition() {
    return condition;
  }

  public void setCondition(ExprOrFormula condition) {
    this.condition = condition;
  }

  public ExprOrFormula getThenClause() {
    return thenClause;
  }

  public void setThenClause(ExprOrFormula thenClause) {
    this.thenClause = thenClause;
  }

  public ExprOrFormula getElseClause() {
    return elseClause;
  }

  public void setElseClause(ExprOrFormula elseClause) {
    this.elseClause = elseClause;
  }
}

package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprUnary;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;

public abstract class UnaryExprOrFormula extends ExprOrFormula {

  protected ExprOrFormula sub;

  public UnaryExprOrFormula(Node parent, ExprUnary expr) {
    super(parent, expr.type());
    this.sub = buildExpression(this, expr.sub);
  }

  public UnaryExprOrFormula(Node parent, Type type, ExprOrFormula sub) {
    super(parent, type);
    this.sub = sub;
  }

  public UnaryExprOrFormula() {
    super();
  }

  public ExprOrFormula getSub() {
    return sub;
  }

  public void setSub(ExprOrFormula sub) {
    this.sub = sub;
  }
}

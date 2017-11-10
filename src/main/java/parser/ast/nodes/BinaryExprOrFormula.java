package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprBinary;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;

public abstract class BinaryExprOrFormula extends ExprOrFormula {

  protected ExprOrFormula left;
  protected ExprOrFormula right;

  public BinaryExprOrFormula(Node parent, ExprBinary expr) {
    super(parent, expr.type());
    this.left = buildExpression(this, expr.left);
    this.right = buildExpression(this, expr.right);
  }

  public BinaryExprOrFormula(Node parent, Type type, ExprOrFormula left, ExprOrFormula right) {
    super(parent, type);
    this.left = left;
    this.right = right;
  }

  public BinaryExprOrFormula() {
    super();
  }

  public ExprOrFormula getLeft() {
    return left;
  }

  public void setLeft(ExprOrFormula left) {
    this.left = left;
  }

  public ExprOrFormula getRight() {
    return right;
  }

  public void setRight(ExprOrFormula right) {
    this.right = right;
  }
}

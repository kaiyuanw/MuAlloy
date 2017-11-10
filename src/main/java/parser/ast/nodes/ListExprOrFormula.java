package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprList;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.List;
import java.util.stream.Collectors;

public abstract class ListExprOrFormula extends ExprOrFormula {

  protected List<ExprOrFormula> arguments;

  public ListExprOrFormula(Node parent, ExprList exprList) {
    super(parent, exprList.type());
    this.arguments = createArgs(exprList);
  }

  public ListExprOrFormula(Node parent, Type type, List<ExprOrFormula> args) {
    super(parent, type);
    this.arguments = args;
  }

  public ListExprOrFormula() {
    super();
  }

  private List<ExprOrFormula> createArgs(ExprList exprList) {
    return exprList.args.stream().map(arg -> buildExpression(this, arg))
        .collect(Collectors.toList());
  }

  public List<ExprOrFormula> getArguments() {
    return arguments;
  }

  public void setArguments(List<ExprOrFormula> arguments) {
    this.arguments = arguments;
  }
}

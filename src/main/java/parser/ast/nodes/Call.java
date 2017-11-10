package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprCall;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.List;
import java.util.stream.Collectors;
import parser.util.StringUtil;

public abstract class Call extends ExprOrFormula {

  protected String name;
  protected List<ExprOrFormula> arguments;

  public Call(Node parent, ExprCall expr) {
    super(parent, expr.type());
    this.name = StringUtil.ignoreLeadingThis(expr.fun.label);
    this.arguments = createArgs(expr);
  }

  public Call(Node parent, Type type, String name, List<ExprOrFormula> args) {
    super(parent, type);
    this.name = name;
    this.arguments = args;
  }

  public Call() {
    super();
  }

  private List<ExprOrFormula> createArgs(ExprCall expr) {
    return expr.args.stream().map(arg -> buildExpression(this, arg)).collect(Collectors.toList());
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public List<ExprOrFormula> getArguments() {
    return arguments;
  }

  public void setArguments(List<ExprOrFormula> arguments) {
    this.arguments = arguments;
  }
}

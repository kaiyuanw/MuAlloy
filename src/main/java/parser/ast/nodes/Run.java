package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Command;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class Run extends Cmd {

  public Run(Node parent, Command cmd) {
    super(parent, cmd);
  }

  public Run(Node parent, String name, String scopeAsString, int expect) {
    super(parent, name, scopeAsString, expect);
  }

  public Run() {
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

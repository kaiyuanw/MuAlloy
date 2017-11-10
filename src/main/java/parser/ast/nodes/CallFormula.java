package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.ExprCall;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class CallFormula extends Call {

  public CallFormula(Node parent, ExprCall expr) {
    super(parent, expr);
  }

  public CallFormula(Node parent, Type type, String name, List<ExprOrFormula> args) {
    super(parent, type, name, args);
  }

  public CallFormula() {
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

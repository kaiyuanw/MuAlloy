package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Func;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class Predicate extends PredOrFun {

  public Predicate(Node parent, Func predOrFun) {
    super(parent, predOrFun);
  }

  public Predicate(Node parent, String name, Body body, List<ParamDecl> paramList) {
    super(parent, name, body, paramList);
  }

  public Predicate() {
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

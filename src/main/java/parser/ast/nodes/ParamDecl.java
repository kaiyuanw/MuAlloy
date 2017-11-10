package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Decl;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class ParamDecl extends RelDecl {

  public ParamDecl(Node parent, Decl decl) {
    super(parent, decl);
  }

  public ParamDecl(Node parent, boolean disjoint, List<String> names, ExprOrFormula expr) {
    super(parent, disjoint, names, expr);
  }

  public ParamDecl() {
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

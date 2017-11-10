package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Sig;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.etc.Names;
import parser.util.StringUtil;

public class SigExpr extends ExprOrFormula {

  protected String name;

  public SigExpr(Node parent, Sig sig) {
    super(parent, sig.type());
    this.name = StringUtil.afterSubstring(sig.label, Names.SLASH, true);
  }

  public SigExpr(Node parent, Type type, String name) {
    super(parent, type);
    this.name = name;
  }

  public SigExpr() {
    super();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
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

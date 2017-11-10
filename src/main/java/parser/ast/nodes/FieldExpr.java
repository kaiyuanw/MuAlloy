package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Sig.Field;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.etc.Names;
import parser.util.StringUtil;

public class FieldExpr extends ExprOrFormula {

  protected String name;

  public FieldExpr(Node parent, Field field) {
    super(parent, field.type());
    this.name = StringUtil.afterSubstring(field.label, Names.SLASH, true);
  }

  public FieldExpr(Node parent, Type type, String name) {
    super(parent, type);
    this.name = name;
  }

  public FieldExpr() {
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

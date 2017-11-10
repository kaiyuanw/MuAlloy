package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4.Pair;
import edu.mit.csail.sdg.alloy4compiler.ast.Expr;
import edu.mit.csail.sdg.alloy4compiler.ast.Func;
import parser.util.StringUtil;

public abstract class Paragraph extends Node {

  protected String name;
  protected Body body;

  public Paragraph(Node parent, Func predOrFun) {
    super(parent);
    this.name = StringUtil.ignoreLeadingThis(predOrFun.label);
    this.body = new Body(this, predOrFun.getBody());
  }

  public Paragraph(Node parent, Pair<String, Expr> pair) {
    super(parent);
    this.name = pair.a;
    this.body = new Body(this, pair.b);
  }

  public Paragraph(Node parent, String name, Body body) {
    super(parent);
    this.name = name;
    this.body = body;
  }

  public Paragraph() {
    super();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Body getBody() {
    return body;
  }

  public void setBody(Body body) {
    this.body = body;
  }
}

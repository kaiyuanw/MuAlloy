package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Decl;
import java.util.List;
import java.util.stream.Collectors;

public abstract class RelDecl extends Node {

  protected boolean disjoint;
  protected List<String> names;
  protected ExprOrFormula expr;

  public RelDecl(Node parent, Decl decl) {
    super(parent);
    this.disjoint = decl.disjoint != null;
    this.names = findRelationNames(decl);
    this.expr = ExprOrFormula.buildExpression(this, decl.expr);
  }

  public RelDecl(Node parent, boolean disjoint, List<String> names, ExprOrFormula expr) {
    super(parent);
    this.disjoint = disjoint;
    this.names = names;
    this.expr = expr;
  }

  public RelDecl() {
    super();
  }

  private List<String> findRelationNames(Decl decl) {
    return decl.names.stream().map(exprHasName -> exprHasName.label).collect(Collectors.toList());
  }

  public List<String> getNames() {
    return names;
  }

  public void setNames(List<String> names) {
    this.names = names;
  }

  public ExprOrFormula getExpr() {
    return expr;
  }

  public void setExpr(ExprOrFormula expr) {
    this.expr = expr;
  }

  public boolean isDisjoint() {
    return disjoint;
  }

  public void setDisjoint(boolean disjoint) {
    this.disjoint = disjoint;
  }
}

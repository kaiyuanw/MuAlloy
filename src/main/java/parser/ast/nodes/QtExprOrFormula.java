package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Decl;
import edu.mit.csail.sdg.alloy4compiler.ast.ExprQt;
import edu.mit.csail.sdg.alloy4compiler.ast.Type;
import java.util.List;
import java.util.stream.Collectors;

public abstract class QtExprOrFormula extends ExprOrFormula {

  protected List<VarDecl> varDecls;
  protected Body body;

  public QtExprOrFormula(Node parent, ExprQt expr) {
    super(parent, expr.type());
    this.varDecls = createVarDecls(expr.decls);
    this.body = new Body(this, expr.sub);
  }

  public QtExprOrFormula(Node parent, Type type, List<VarDecl> varDecls, Body body) {
    super(parent, type);
    this.varDecls = varDecls;
    this.body = body;
  }

  public QtExprOrFormula() {
    super();
  }

  private List<VarDecl> createVarDecls(List<Decl> decls) {
    return decls.stream().map(varDecl -> new VarDecl(this, varDecl)).collect(Collectors.toList());
  }

  public List<VarDecl> getVarDecls() {
    return varDecls;
  }

  public void setVarDecls(List<VarDecl> varDecls) {
    this.varDecls = varDecls;
  }

  public Body getBody() {
    return body;
  }

  public void setBody(Body body) {
    this.body = body;
  }
}

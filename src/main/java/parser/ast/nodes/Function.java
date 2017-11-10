package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Func;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class Function extends PredOrFun {

  protected ExprOrFormula returnType;

  public Function(Node parent, Func predOrFun) {
    super(parent, predOrFun);
    this.returnType = ExprOrFormula.buildExpression(this, predOrFun.returnDecl);
  }

  public Function(Node parent, String name, Body body, List<ParamDecl> paramList,
      ExprOrFormula returnType) {
    super(parent, name, body, paramList);
    this.returnType = returnType;
  }

  public Function() {
    super();
  }

  public ExprOrFormula getReturnType() {
    return returnType;
  }

  public void setReturnType(ExprOrFormula returnType) {
    this.returnType = returnType;
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

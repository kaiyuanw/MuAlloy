package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Decl;
import edu.mit.csail.sdg.alloy4compiler.ast.Func;
import java.util.List;
import java.util.stream.Collectors;

public abstract class PredOrFun extends Paragraph {

  protected List<ParamDecl> paramList;

  public PredOrFun(Node parent, Func predOrFun) {
    super(parent, predOrFun);
    this.paramList = createParameterList(predOrFun.decls);
  }

  public PredOrFun(Node parent, String name, Body body, List<ParamDecl> paramList) {
    super(parent, name, body);
    this.paramList = paramList;
  }

  public PredOrFun() {
    super();
  }

  public List<ParamDecl> getParamList() {
    return paramList;
  }

  public void setParamList(List<ParamDecl> paramList) {
    this.paramList = paramList;
  }

  private List<ParamDecl> createParameterList(List<Decl> decls) {
    return decls.stream().map(decl -> new ParamDecl(this, decl)).collect(Collectors.toList());
  }
}

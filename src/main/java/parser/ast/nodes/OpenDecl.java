package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.parser.CompModule;
import java.util.List;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class OpenDecl extends Node {

  protected String fileName;
  protected List<String> arguments;
  protected String alias;

  public OpenDecl(Node parent, CompModule.Open open) {
    super(parent);
    this.fileName = open.filename;
    this.arguments = open.args;
    this.alias = open.alias;
  }

  public OpenDecl(Node parent, String fileName, List<String> arguments, String alias) {
    super(parent);
    this.fileName = fileName;
    this.arguments = arguments;
    this.alias = alias;
  }

  public OpenDecl() {
    super();
  }

  public String getFileName() {
    return fileName;
  }

  public void setFileName(String fileName) {
    this.fileName = fileName;
  }

  public List<String> getArguments() {
    return arguments;
  }

  public void setArguments(List<String> arguments) {
    this.arguments = arguments;
  }

  public String getAlias() {
    return alias;
  }

  public void setAlias(String alias) {
    this.alias = alias;
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

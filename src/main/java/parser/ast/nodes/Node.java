package parser.ast.nodes;

import java.io.Serializable;
import parser.ast.visitor.Visitable;

public abstract class Node implements Visitable, Serializable {

  protected Node parent;

  public Node(Node parent) {
    this.parent = parent;
  }

  public Node() {
  }

  public Node getParent() {
    return parent;
  }

  public void setParent(Node parent) {
    this.parent = parent;
  }
}

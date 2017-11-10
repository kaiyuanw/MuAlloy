package muAlloy.util;

import parser.ast.nodes.Node;

/**
 * This class represents the type of Alloy construct as well as what was mutated.
 */
public class MInfo {

  private MType type;
  private Node node;
  private Node extraNode;
  public MInfo() {
    this.type = MType.UNKNOWN;
    this.node = null;
    this.extraNode = null;
  }

  public MType getType() {
    return type;
  }

  public void setType(MType type) {
    this.type = type;
  }

  public Node getNode() {
    return node;
  }

  public void setNode(Node node) {
    this.node = node;
  }

  public Node getExtraNode() {
    return extraNode;
  }

  public void setExtraNode(Node extraNode) {
    this.extraNode = extraNode;
  }

  public enum MType {
    SIG("signature"),
    FIELD("field"),
    PRED("predicate"),
    FUN("function"),
    FACT("fact"),
    ASSERT("assertion"),
    UNKNOWN("unknown"),
    IGNORE("ignored");

    private String label;

    MType(String label) {
      this.label = label;
    }

    @Override
    public String toString() {
      return label;
    }
  }
}

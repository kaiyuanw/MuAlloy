package parser.etc;

import muAlloy.visitor.MutationVisitor;
import parser.ast.nodes.Node;

/**
 * This class contains data after applying mutation operators. The data will be fed into {@link
 * MutationVisitor#process(Node, MutationData, Class)}.
 */
public class MutationData {

  private final String mutatedNodePathAsString;
  private final String mutantAsString;
  private final boolean isEquivalent;

  private MutationData(String mutatedNodePathAsString, String mutantAsString,
      boolean isEquivalent) {
    this.mutatedNodePathAsString = mutatedNodePathAsString;
    this.mutantAsString = mutantAsString;
    this.isEquivalent = isEquivalent;
  }

  public static MutationData of(String mutatedNodePathAsString, String mutantAsString,
      boolean isEquivalent) {
    return new MutationData(mutatedNodePathAsString, mutantAsString, isEquivalent);
  }

  public String getMutatedNodePathAsString() {
    return mutatedNodePathAsString;
  }

  public String getMutantAsString() {
    return mutantAsString;
  }

  public boolean isEquivalent() {
    return isEquivalent;
  }
}

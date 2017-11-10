package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Command;
import edu.mit.csail.sdg.alloy4compiler.ast.CommandScope;

public abstract class Cmd extends Node {

  protected String name;
  protected String scopeAsString;
  protected int expect;

  public Cmd(Node parent, Command cmd) {
    super(parent);
    this.name = cmd.label;
    this.scopeAsString = createConstValue(cmd);
    this.expect = cmd.expects;
  }

  public Cmd(Node parent, String name, String scopeAsString, int expect) {
    super(parent);
    this.name = name;
    this.scopeAsString = scopeAsString;
    this.expect = expect;
  }

  public Cmd() {
    super();
  }

  /**
   * Same as edu.mit.csail.sdg.alloy4compiler.ast.Command toString(), except that we print run/check
   * instead of Run/Check.
   */
  private String createConstValue(Command cmd) {
    if (cmd.parent != null) {
      Command p = cmd.parent;
      while (p.parent != null) {
        p = p.parent;
      }
      return p.toString();
    }
    boolean first = true;
    StringBuilder sb = new StringBuilder();
    if (cmd.overall >= 0 && (cmd.bitwidth >= 0 || cmd.maxseq >= 0 || cmd.scope.size() > 0)) {
      sb.append(" for ").append(cmd.overall).append(" but");
    } else if (cmd.overall >= 0) {
      sb.append(" for ").append(cmd.overall);
    } else if (cmd.bitwidth >= 0 || cmd.maxseq >= 0 || cmd.scope.size() > 0) {
      sb.append(" for");
    }
    if (cmd.bitwidth >= 0) {
      sb.append(" ").append(cmd.bitwidth).append(" int");
      first = false;
    }
    if (cmd.maxseq >= 0) {
      sb.append(first ? " " : ", ").append(cmd.maxseq).append(" seq");
      first = false;
    }
    for (CommandScope e : cmd.scope) {
      sb.append(first ? " " : ", ").append(e);
      first = false;
    }
    if (cmd.expects >= 0) {
      sb.append(" expect ").append(cmd.expects);
    }
    return sb.toString();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getScopeAsString() {
    return scopeAsString;
  }

  public void setScopeAsString(String scopeAsString) {
    this.scopeAsString = scopeAsString;
  }

  public int getExpect() {
    return expect;
  }

  public void setExpect(int expect) {
    this.expect = expect;
  }
}

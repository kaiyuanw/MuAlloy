package parser.ast.visitor;

/**
 * The Formatting is used for pretty printing only.
 */
public class Formatting {

  private boolean usingNewLine;

  public Formatting() {
    this(false);
  }

  public Formatting(boolean usesNewLine) {
    this.usingNewLine = usesNewLine;
  }

  public boolean isUsingNewLine() {
    return usingNewLine;
  }

  public void setUsingNewLine(boolean usingNewLine) {
    this.usingNewLine = usingNewLine;
  }
}

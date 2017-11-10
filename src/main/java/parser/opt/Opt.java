package parser.opt;

import edu.mit.csail.sdg.alloy4compiler.translator.A4Options;
import parser.ast.visitor.PrettyStringVisitor;
import parser.util.AlloyUtil;

public class Opt {

  /**
   * Path to the model.
   */
  protected String modelPath;
  /**
   * Path to the directory where mutants are generated.
   */
  protected String mutantDirPath;
  /**
   * Path to the test suite.
   */
  protected String testPath;
  /**
   * A4Options for solving.
   */
  protected A4Options options;
  /**
   * Pretty printer
   */
  protected PrettyStringVisitor psv;

  public Opt(String modelPath, String mutantDirPath, String testPath) {
    this.modelPath = modelPath;
    this.mutantDirPath = mutantDirPath;
    this.testPath = testPath;
    this.options = new A4Options();
    options.noOverflow = true;
    options.solver = A4Options.SatSolver.MiniSatJNI;
    AlloyUtil.loadMiniSatSolver();
    this.psv = new PrettyStringVisitor();
  }

  public String getModelPath() {
    return modelPath;
  }

  public String getMutantDirPath() {
    return mutantDirPath;
  }

  public boolean noTest() {
    return testPath == null;
  }

  public String getTestPath() {
    return testPath;
  }

  public A4Options getOptions() {
    return options;
  }

  public PrettyStringVisitor getPSV() {
    return psv;
  }
}

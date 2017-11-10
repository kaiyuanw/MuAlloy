package muAlloy.opt;

import muAlloy.util.SpecialCase;
import parser.opt.Opt;

public class MutantGeneratorOpt extends Opt {

  /**
   * Scope for equivalence checking.
   */
  protected int scope;
  /**
   * Special treatment for modules
   */
  protected SpecialCase specialCase;

  public MutantGeneratorOpt(String modelPath, String mutantDirPath, int scope, String testPath) {
    super(modelPath, mutantDirPath, testPath);
    this.mutantDirPath = mutantDirPath;
    this.scope = scope;
    this.specialCase = new SpecialCase();
  }

  public int getScope() {
    return scope;
  }

  public SpecialCase getSpecialCase() {
    return specialCase;
  }
}

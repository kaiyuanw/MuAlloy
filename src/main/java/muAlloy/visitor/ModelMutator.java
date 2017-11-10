package muAlloy.visitor;

import java.nio.file.Paths;
import java.util.Arrays;
import muAlloy.opt.MutantGeneratorOpt;
import parser.ast.nodes.Node;
import parser.ast.nodes.OpenDecl;
import parser.etc.MutationData;
import parser.etc.Names;
import parser.util.FileUtil;

public class ModelMutator extends MutationVisitor {

  private int count;
  private int equivMutantNum;
  private int nonEquivMutantNum;

  public ModelMutator(MutantGeneratorOpt opt) {
    super(opt);
    this.count = 1;
    this.equivMutantNum = 0;
    this.nonEquivMutantNum = 0;
  }

  @Override
  public void visit(OpenDecl n, Object arg) {
    if (n.getFileName().equals("util/ordering")) {
      opt.getSpecialCase().addOrderingOpenDecl(n);
      // Add ordering module if used.
      FileUtil.writeText(n.accept(opt.getPSV(), null) + Names.NEW_LINE, opt.getTestPath(), true);
    }
    super.visit(n, arg);
  }

  @Override
  protected void process(Node node, MutationData mutationData, Class<?> clazz) {
    if (mutationData.isEquivalent()) {
      equivMutantNum++;
      return;
    }
    nonEquivMutantNum++;
    FileUtil.writeText(mutationData.getMutantAsString(), Paths.get(opt.getMutantDirPath(),
        String.join(Names.UNDERSCORE, Arrays.asList(clazz.getSimpleName(), String.valueOf(count++)))
            + Names.DOT_ALS).toString(), false);
  }

  public int getEquivMutantNum() {
    return equivMutantNum;
  }

  public int getNonEquivMutantNum() {
    return nonEquivMutantNum;
  }
}

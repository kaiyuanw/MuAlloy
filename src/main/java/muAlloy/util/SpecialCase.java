package muAlloy.util;

import java.util.ArrayList;
import java.util.List;
import parser.ast.nodes.OpenDecl;

/**
 * This class stores information for modules that need special treatment.  E.g. util/ordering, etc.
 */
public class SpecialCase {

  private List<OpenDecl> orderingOpenDecls;

  public SpecialCase() {
    this.orderingOpenDecls = new ArrayList<>();
  }

  public List<OpenDecl> getOrderingOpenDecls() {
    return orderingOpenDecls;
  }

  public void addOrderingOpenDecl(OpenDecl openDecl) {
    orderingOpenDecls.add(openDecl);
  }
}

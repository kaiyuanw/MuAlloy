package parser.ast.nodes;

import edu.mit.csail.sdg.alloy4compiler.ast.Sig;
import java.util.List;
import java.util.stream.Collectors;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;
import parser.etc.Names;
import parser.util.StringUtil;

public class SigDecl extends Node {

  private String name;
  private boolean isAbstract;
  private MULT mult;
  private boolean isTopLevel;
  private boolean isSubsig;
  private String parentName;
  private List<FieldDecl> fieldList;
  private boolean hasSigFact;
  private ExprOrFormula sigFact;

  public SigDecl(Node parent, Sig sig) {
    super(parent);
    this.name = StringUtil.afterSubstring(sig.label, Names.SLASH, true);
    this.isAbstract = sig.isAbstract != null;
    this.mult = findMult(sig);
    this.parentName = null;
    this.isTopLevel = sig.isTopLevel();
    if (!isTopLevel) {
      this.isSubsig = sig.isSubsig != null;
      if (isSubsig) { // S extends P
        this.parentName = StringUtil
            .afterSubstring(((Sig.PrimSig) sig).parent.label, Names.SLASH, true);
      } else { // S in P
        this.parentName = StringUtil
            .afterSubstring(((Sig.SubsetSig) sig).parents.get(0).label, Names.SLASH, true);
      }
    }
    this.fieldList = sig.getFieldDecls().makeConstList().stream()
        .map(fieldDecl -> new FieldDecl(this, fieldDecl)).collect(Collectors.toList());
    // Not sure how sig can be declared to have more than 1 fact.
    if (sig.getFacts().size() > 0) {
      this.hasSigFact = true;
      this.sigFact = ExprOrFormula.buildExpression(this, sig.getFacts().get(0));
    }
  }

  public SigDecl(Node parent, String name, boolean isAbstract, MULT mult, boolean isTopLevel,
      boolean isSubsig, String parentName, List<FieldDecl> fieldList, boolean hasSigFact,
      ExprOrFormula sigFact) {
    super(parent);
    this.name = name;
    this.isAbstract = isAbstract;
    this.mult = mult;
    this.isTopLevel = isTopLevel;
    this.isSubsig = isSubsig;
    this.parentName = parentName;
    this.fieldList = fieldList;
    this.hasSigFact = hasSigFact;
    this.sigFact = sigFact;
  }

  public SigDecl() {
    super();
  }

  private MULT findMult(Sig sig) {
    if (sig.isLone != null) {
      return MULT.LONE;
    } else if (sig.isOne != null) {
      return MULT.ONE;
    } else if (sig.isSome != null) {
      return MULT.SOME;
    } else {
      return MULT.SET;
    }
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public boolean isAbstract() {
    return isAbstract;
  }

  public MULT getMult() {
    return mult;
  }

  public void setMult(MULT mult) {
    this.mult = mult;
  }

  public boolean isTopLevel() {
    return isTopLevel;
  }

  public boolean isSubsig() {
    return isSubsig;
  }

  public String getParentName() {
    return parentName;
  }

  public void setParentName(String parentName) {
    this.parentName = parentName;
  }

  public List<FieldDecl> getFieldList() {
    return fieldList;
  }

  public void setFieldList(List<FieldDecl> fieldList) {
    this.fieldList = fieldList;
  }

  public boolean hasSigFact() {
    return hasSigFact;
  }

  public ExprOrFormula getSigFact() {
    return sigFact;
  }

  public void setSigFact(ExprOrFormula sigFact) {
    this.sigFact = sigFact;
  }

  public void setIsAbstract(boolean isAbstract) {
    this.isAbstract = isAbstract;
  }

  public void setIsTopLevel(boolean isTopLevel) {
    this.isTopLevel = isTopLevel;
  }

  public void setIsSubsig(boolean isSubsig) {
    this.isSubsig = isSubsig;
  }

  public void setHasSigFact(boolean hasSigFact) {
    this.hasSigFact = hasSigFact;
  }

  @Override
  public <R, A> R accept(GenericVisitor<R, A> v, A arg) {
    return v.visit(this, arg);
  }

  @Override
  public <A> void accept(VoidVisitor<A> v, A arg) {
    v.visit(this, arg);
  }

  public enum MULT {
    LONE("lone"),
    ONE("one"),
    SOME("some"),
    SET("");

    private final String label;

    MULT(String label) {
      this.label = label;
    }

    @Override
    public String toString() {
      switch (this) {
        case SET:
          return label;
        default:
          return label + " ";
      }
    }

    public String getLabel() {
      return label;
    }
  }
}

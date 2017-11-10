package parser.ast.nodes;

import static parser.etc.Names.DOLLAR;

import edu.mit.csail.sdg.alloy4.ConstList;
import edu.mit.csail.sdg.alloy4.Pair;
import edu.mit.csail.sdg.alloy4compiler.ast.Command;
import edu.mit.csail.sdg.alloy4compiler.ast.Expr;
import edu.mit.csail.sdg.alloy4compiler.ast.Func;
import edu.mit.csail.sdg.alloy4compiler.ast.Sig;
import edu.mit.csail.sdg.alloy4compiler.parser.CompModule;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import parser.ast.visitor.GenericVisitor;
import parser.ast.visitor.VoidVisitor;

public class ModelUnit extends Node {

  protected ModuleDecl moduleDecl;
  protected List<OpenDecl> openDeclList;
  protected List<SigDecl> sigDeclList;
  protected List<Predicate> predDeclList;
  protected List<Function> funDeclList;
  protected List<Fact> factDeclList;
  protected List<Assertion> assertDeclList;
  protected List<Run> runCmdList;
  protected List<Check> checkCmdList;

  public ModelUnit(Node parent, CompModule module) {
    super(parent);
    this.moduleDecl = createModuleDecl(module.getModelName());
    this.openDeclList = createOpenDeclList(module.getOpens());
    this.sigDeclList = createSigDeclList(module.getAllSigs().makeConstList());
    this.predDeclList = new ArrayList<>();
    this.funDeclList = new ArrayList<>();
    for (Func func : module.getAllFunc()) {
      if (func.isPred) {
        predDeclList.add(new Predicate(this, func));
      } else {
        funDeclList.add(new Function(this, func));
      }
    }
    this.factDeclList = createFactDeclList(module.getAllFacts().makeConstList());
    this.assertDeclList = createAssertDeclList(module.getAllAssertions());
    this.runCmdList = new ArrayList<>();
    this.checkCmdList = new ArrayList<>();
    for (Command cmd : module.getAllCommands()) {
      if (cmd.check) {
        checkCmdList.add(new Check(this, cmd));
      } else {
        runCmdList.add(new Run(this, cmd));
      }
    }
  }

  public ModelUnit(Node parent, ModuleDecl moduleDecl, List<OpenDecl> openDeclList,
      List<SigDecl> sigDeclList, List<Predicate> predDeclList, List<Function> funDeclList,
      List<Fact> factDeclList, List<Assertion> assertDeclList, List<Run> runCmdList,
      List<Check> checkCmdList) {
    super(parent);
    this.moduleDecl = moduleDecl;
    this.openDeclList = openDeclList;
    this.sigDeclList = sigDeclList;
    this.predDeclList = predDeclList;
    this.funDeclList = funDeclList;
    this.factDeclList = factDeclList;
    this.assertDeclList = assertDeclList;
    this.runCmdList = runCmdList;
    this.checkCmdList = checkCmdList;
  }

  public ModelUnit() {
    super();
  }

  private ModuleDecl createModuleDecl(String moduleName) {
    return new ModuleDecl(this, moduleName);
  }

  private List<OpenDecl> createOpenDeclList(List<CompModule.Open> openDecls) {
    return openDecls.stream().filter(open -> !open.alias.contains(DOLLAR))
        .map(openDecl -> new OpenDecl(this, openDecl))
        .collect(Collectors.toList());
  }

  private List<SigDecl> createSigDeclList(List<Sig> sigDecls) {
    return sigDecls.stream().map(sigDecl -> new SigDecl(this, sigDecl))
        .collect(Collectors.toList());
  }

  private List<Fact> createFactDeclList(ConstList<Pair<String, Expr>> factDecls) {
    return factDecls.stream().map(factDecl -> new Fact(this, factDecl))
        .collect(Collectors.toList());
  }

  private List<Assertion> createAssertDeclList(ConstList<Pair<String, Expr>> assertDecls) {
    return assertDecls.stream().map(assertDecl -> new Assertion(this, assertDecl))
        .collect(Collectors.toList());
  }

  public ModuleDecl getModuleDecl() {
    return moduleDecl;
  }

  public void setModuleDecl(ModuleDecl moduleDecl) {
    this.moduleDecl = moduleDecl;
  }

  public List<OpenDecl> getOpenDeclList() {
    return openDeclList;
  }

  public void setOpenDeclList(List<OpenDecl> openDeclList) {
    this.openDeclList = openDeclList;
  }

  public List<SigDecl> getSigDeclList() {
    return sigDeclList;
  }

  public void setSigDeclList(List<SigDecl> sigDeclList) {
    this.sigDeclList = sigDeclList;
  }

  public List<Predicate> getPredDeclList() {
    return predDeclList;
  }

  public void setPredDeclList(List<Predicate> predDeclList) {
    this.predDeclList = predDeclList;
  }

  public List<Function> getFunDeclList() {
    return funDeclList;
  }

  public void setFunDeclList(List<Function> funDeclList) {
    this.funDeclList = funDeclList;
  }

  public List<Fact> getFactDeclList() {
    return factDeclList;
  }

  public void setFactDeclList(List<Fact> factDeclList) {
    this.factDeclList = factDeclList;
  }

  public List<Assertion> getAssertDeclList() {
    return assertDeclList;
  }

  public void setAssertDeclList(List<Assertion> assertDeclList) {
    this.assertDeclList = assertDeclList;
  }

  public List<Run> getRunCmdList() {
    return runCmdList;
  }

  public void setRunCmdList(List<Run> runCmdList) {
    this.runCmdList = runCmdList;
  }

  public List<Check> getCheckCmdList() {
    return checkCmdList;
  }

  public void setCheckCmdList(List<Check> checkCmdList) {
    this.checkCmdList = checkCmdList;
  }

  @Override
  public <R, A> R accept(GenericVisitor<R, A> v, A arg) {
    return v.visit(this, arg);
  }

  @Override
  public <A> void accept(VoidVisitor<A> v, A arg) {
    v.visit(this, arg);
  }
}

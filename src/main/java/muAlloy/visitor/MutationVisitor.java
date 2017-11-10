package muAlloy.visitor;

import java.util.List;
import muAlloy.opt.MutantGeneratorOpt;
import muAlloy.rule.BOE;
import muAlloy.rule.BOR;
import muAlloy.rule.IEOE;
import muAlloy.rule.LOR;
import muAlloy.rule.MOR;
import muAlloy.rule.QOR;
import muAlloy.rule.UOD;
import muAlloy.rule.UOI;
import muAlloy.rule.UOR;
import muAlloy.util.MInfo;
import parser.ast.nodes.Assertion;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.Body;
import parser.ast.nodes.CallExpr;
import parser.ast.nodes.CallFormula;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.Fact;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.FieldExpr;
import parser.ast.nodes.Function;
import parser.ast.nodes.ITEExpr;
import parser.ast.nodes.ITEFormula;
import parser.ast.nodes.LetExpr;
import parser.ast.nodes.ListExpr;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.ParamDecl;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.QtExpr;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.nodes.VarDecl;
import parser.ast.nodes.VarExpr;
import parser.ast.visitor.VoidVisitorAdapter;
import parser.etc.MutationData;
import parser.etc.Names;

public abstract class MutationVisitor extends VoidVisitorAdapter<Object> {

  protected MutantGeneratorOpt opt;
  protected ModelUnit mu;
  protected MInfo mi;

  public MutationVisitor(MutantGeneratorOpt opt) {
    this.opt = opt;
    this.mi = new MInfo();
  }

  @Override
  public void visit(ModelUnit n, Object arg) {
    this.mu = n;
    super.visit(n, arg);
  }

  @Override
  public void visit(SigDecl n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalNode = mi.getNode();
    mi.setType(MInfo.MType.SIG);
    mi.setNode(n);
    List<MutationData> mutationDataList = MOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, MOR.class));
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalNode);
  }

  @Override
  public void visit(FieldDecl n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalExtraNode = mi.getNode();
    mi.setType(MInfo.MType.FIELD);
    mi.setExtraNode(n);
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalExtraNode);
  }

  @Override
  public void visit(ParamDecl n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalNode = mi.getNode();
    mi.setType(MInfo.MType.IGNORE);
    mi.setNode(n);
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalNode);
  }

  @Override
  public void visit(VarDecl n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ExprOrFormula n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(FieldExpr n, Object arg) {
    List<MutationData> mutationDataList = UOI.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, UOI.class));
    super.visit(n, arg);
  }

  @Override
  public void visit(VarExpr n, Object arg) {
    List<MutationData> mutationDataList = UOI.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, UOI.class));
    super.visit(n, arg);
  }

  @Override
  public void visit(UnaryExpr n, Object arg) {
    List<MutationData> mutationDataList = UOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, UOR.class));
    mutationDataList = UOI.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, UOI.class));
    MutationData mutationData = UOD.mutate(n, mu, opt, mi);
    if (mutationData != null) {
      process(n, mutationData, UOD.class);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(UnaryFormula n, Object arg) {
    List<MutationData> mutationDataList = UOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, UOR.class));
    MutationData mutationData = UOD.mutate(n, mu, opt, mi);
    if (mutationData != null) {
      process(n, mutationData, UOD.class);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(BinaryExpr n, Object arg) {
    List<MutationData> mutationDataList = BOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, BOR.class));
    mutationDataList = UOI.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, UOI.class));
    MutationData mutationData = BOE.mutate(n, mu, opt, mi);
    if (mutationData != null) {
      process(n, mutationData, BOE.class);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(BinaryFormula n, Object arg) {
    List<MutationData> mutationDataList = BOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, BOR.class));
    MutationData mutationData = BOE.mutate(n, mu, opt, mi);
    if (mutationData != null) {
      process(n, mutationData, BOE.class);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(ListExpr n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ListFormula n, Object arg) {
    List<MutationData> mutationDataList = LOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, LOR.class));
    super.visit(n, arg);
  }

  @Override
  public void visit(CallExpr n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(CallFormula n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(QtExpr n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(QtFormula n, Object arg) {
    List<MutationData> mutationDataList = QOR.mutate(n, mu, opt, mi);
    mutationDataList.stream().forEach(mutationData -> process(n, mutationData, QOR.class));
    super.visit(n, arg);
  }

  @Override
  public void visit(ITEExpr n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(ITEFormula n, Object arg) {
    MutationData mutationData = IEOE.mutate(n, mu, opt, mi);
    if (mutationData != null) {
      process(n, mutationData, IEOE.class);
    }
    super.visit(n, arg);
  }

  @Override
  public void visit(LetExpr n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(Body n, Object arg) {
    super.visit(n, arg);
  }

  @Override
  public void visit(Predicate n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalNode = mi.getNode();
    if (n.getName().contains("$") || n.getName().startsWith(Names.IGNORE_NAME)) {
      mi.setType(MInfo.MType.IGNORE);
    } else {
      mi.setType(MInfo.MType.PRED);
    }
    mi.setNode(n);
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalNode);
  }

  @Override
  public void visit(Function n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalNode = mi.getNode();
    if (n.getName().contains("$") || n.getName().startsWith(Names.IGNORE_NAME)) {
      mi.setType(MInfo.MType.IGNORE);
    } else {
      mi.setType(MInfo.MType.FUN);
    }
    mi.setNode(n);
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalNode);
  }

  @Override
  public void visit(Fact n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalNode = mi.getNode();
    if (n.getName().startsWith(Names.IGNORE_NAME)) {
      mi.setType(MInfo.MType.IGNORE);
    } else {
      mi.setType(MInfo.MType.FACT);
    }
    mi.setNode(n);
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalNode);
  }

  @Override
  public void visit(Assertion n, Object arg) {
    MInfo.MType originalType = mi.getType();
    Node originalNode = mi.getNode();
    mi.setType(MInfo.MType.IGNORE);
    mi.setNode(n);
    super.visit(n, arg);
    mi.setType(originalType);
    mi.setNode(originalNode);
  }

  protected abstract void process(Node node, MutationData mutationData, Class<?> clazz);
}

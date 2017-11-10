package parser.ast.visitor;

public interface Visitable {

  <R, A> R accept(GenericVisitor<R, A> v, A arg);

  <A> void accept(VoidVisitor<A> v, A arg);
}

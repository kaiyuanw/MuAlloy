package parser.etc;

import java.io.Serializable;

public final class Pair<A, B> implements Serializable {

  /**
   * The first half of the pair.
   */
  public final A a;

  /**
   * The second half of the pair.
   */
  public final B b;

  /**
   * Constructs a new Pair object (a,b).
   */
  private Pair(A a, B b) {
    this.a = a;
    this.b = b;
  }

  public static <X, Y> Pair<X, Y> of(X a, Y b) {
    return new Pair<>(a, b);
  }

  /**
   * If "a" and "b" are both String, concatename them with a space; if only one is, return it; else
   * call toString() on them.
   */
  @Override
  public String toString() {
    if (a instanceof String) {
      if (b instanceof String) {
        return a + " " + b;
      } else {
        return (String) a;
      }
    }
    if (b instanceof String) {
      return (String) b;
    }
    if (a == null) {
      return (b != null) ? b.toString() : "";
    } else {
      return (b != null) ? (a + " " + b) : a.toString();
    }
  }

  /**
   * Returns a hashcode based on (a==null?0:a.hashCode()) and (b==null?0:b.hashCode()).
   */
  @Override
  public int hashCode() {
    int i = (a == null) ? 0 : a.hashCode();
    int j = (b == null) ? 0 : b.hashCode();
    return i * 173123 + j;
  }

  /**
   * Pairs (a1, b1) and (a2, b2) are equal iff (a1==null ? a2==null : a1.equals(a2)) and (b1==null ?
   * b2==null : b1 .equals(b2))
   */
  @Override
  public boolean equals(Object that) {
    if (this == that) {
      return true;
    }
    if (!(that instanceof Pair)) {
      return false;
    }
    Pair<?, ?> p = (Pair<?, ?>) that;
    return (a == null ? p.a == null : a.equals(p.a)) && (b == null ? p.b == null : b.equals(p.b));
  }
}
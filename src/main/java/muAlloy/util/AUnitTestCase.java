package muAlloy.util;

public class AUnitTestCase {
  String testName;
  String body;
  int scope;

  public AUnitTestCase(String testName, String body, int scope) {
    this.testName = testName;
    this.body = body;
    this.scope = scope;
  }

  public String toString(int num) {
    String name = testName + num;
    return "pred " + name + " {\n" + body + "\n}\nrun " + name + " for " + scope;
  }

  @Override
  public boolean equals(Object obj) {
    if (obj == null) {
      return false;
    }
    if (this == obj) {
      return true;
    }
    if (!(obj instanceof AUnitTestCase)) {
      return false;
    }
    AUnitTestCase testCase = (AUnitTestCase) obj;
    return body.equals(testCase.body);
  }

  @Override
  public int hashCode() {
    return body.hashCode();
  }
}

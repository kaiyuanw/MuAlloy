package parser.util;

public class Logger {

  public static final int INFO = 0;
  public static final int DEBUG = 1;

  private int mode;

  public Logger(int mode) {
    this.mode = mode;
  }

  public void setMode(int mode) {
    this.mode = mode;
  }

  public void info(String msg) {
    if (mode >= INFO) {
      System.out.println(" [INFO] " + msg);
    }
  }

  public void debug(String msg) {
    if (mode >= DEBUG) {
      System.out.println("[DEBUG] " + msg);
    }
  }

  public void error(String msg) {
    System.out.println("[ERROR] " + msg);
  }
}

package parser.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Codec {

  public static boolean serialize(Object obj, String fpath) {
    try {
      FileOutputStream fout = new FileOutputStream(fpath);
      ObjectOutputStream oos = new ObjectOutputStream(fout);
      oos.writeObject(obj);
      oos.close();
      return true;
    } catch (Exception ex) {
      ex.printStackTrace();
      return false;
    }
  }

  public static Object deserialize(String fpath) {
    try {
      FileInputStream fin = new FileInputStream(fpath);
      ObjectInputStream ois = new ObjectInputStream(fin);
      Object obj = ois.readObject();
      ois.close();
      return obj;
    } catch (Exception ex) {
      ex.printStackTrace();
      return null;
    }
  }
}

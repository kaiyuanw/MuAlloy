package parser.util;

import java.util.ArrayList;
import java.util.List;
import parser.etc.Names;

/**
 * This class provides string manipulation methods.
 */
public class StringUtil {

  /**
   * If the original string s contains the substring, return s.substring(i + 1) where i is the index
   * of the substring. Otherwise, return the original string s.  If last is false, i is the index of
   * the first occurrence of substring. Otherwise, i is the index of the last occurrence of
   * substring.
   */
  public static String afterSubstring(String s, String substring, boolean last) {
    int index;
    if (last) {
      index = s.lastIndexOf(substring);
    } else {
      index = s.indexOf(substring);
    }
    return index == -1 ? s : s.substring(index + 1);
  }

  public static String ignoreLeadingThis(String s) {
    if (s.toLowerCase().startsWith("this/")) {
      return afterSubstring(s, Names.SLASH, false);
    }
    return s;
  }

  /**
   * If the original string s contains the substring, return s.substring(0, i) where i is the index
   * of the substring. Otherwise, return the original string s.  If last is false, i is the index of
   * the first occurrence of substring. Otherwise, i is the index of the last occurrence of
   * substring.
   */
  public static String beforeSubstring(String s, String substring, boolean last) {
    int index;
    if (last) {
      index = s.lastIndexOf(substring);
    } else {
      index = s.indexOf(substring);
    }
    return index == -1 ? s : s.substring(0, index);
  }

  /**
   * Encode a list of strings.
   */
  public static String encode(List<String> strs) {
    StringBuilder sb = new StringBuilder();
    for (String s : strs) {
      sb.append(s.length()).append(Names.NEW_LINE).append(s).append(Names.NEW_LINE);
    }
    return sb.toString();
  }

  /**
   * Decode a string to a list of strings.
   */
  public static List<String> decode(String str) {
    List<String> res = new ArrayList<>();
    int i = 0;
    while (i < str.length()) {
      int newLine = str.indexOf(Names.NEW_LINE, i);
      int size = Integer.valueOf(str.substring(i, newLine));
      res.add(str.substring(newLine + 1, newLine + size + 1));
      i = newLine + size + 2;
    }
    return res;
  }
}

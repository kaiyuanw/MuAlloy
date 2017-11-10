package parser.util;

import static parser.etc.Names.HIDDEN_DIR_PATH;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.function.BiFunction;
import java.util.stream.Collectors;
import parser.etc.Names;

public class FileUtil {

  /**
   * Check if all directories and files needed are created.  If not, create them.
   */
  public static void createDirsIfNotExist(String... dirPaths) {
    createDirOnDemand(HIDDEN_DIR_PATH);
    for (String dirPath : dirPaths) {
      createDirOnDemand(dirPath);
    }
  }

  private static void createDirOnDemand(String dirPath) {
    File dir = new File(dirPath);
    if (!dir.exists()) {
      dir.mkdirs();
    }
  }

  public static boolean fileExists(String filePath) {
    return new File(filePath).exists();
  }

  public static boolean isFile(String filePath) {
    return new File(filePath).isFile();
  }

  public static boolean deleteFile(String filePath) {
    return new File(filePath).delete();
  }

  public static boolean deleteDirectory(String dirPath) {
    return deleteDirectory(new File(dirPath));
  }

  private static boolean deleteDirectory(File directory) {
    if (directory.exists()) {
      File[] files = directory.listFiles();
      if (files != null) {
        for (File file : files) {
          if (file.isDirectory()) {
            deleteDirectory(file);
          } else {
            file.delete();
          }
        }
      }
    }
    return directory.delete();
  }

  /**
   * Read from txt file.
   */
  public static String readText(String fpath) {
    File file = new File(fpath);
    BufferedReader reader = null;
    StringBuilder sb = new StringBuilder();
    String tmp;
    try {
      reader = new BufferedReader(new FileReader(file));
      while ((tmp = reader.readLine()) != null) {
        sb.append(tmp);
        sb.append("\n");
      }
    } catch (IOException ignored) {
    } finally {
      try {
        if (reader != null) {
          reader.close();
        }
      } catch (IOException ignored) {
      }
    }
    return new String(sb);
  }

  /**
   * Write to txt file.
   */
  public static void writeText(String content, String fname, boolean append) {
    File file = new File(fname);
    BufferedWriter bw = null;
    try {
      bw = new BufferedWriter(new FileWriter(file, append));
      bw.write(content);
    } catch (IOException ignored) {
    } finally {
      if (bw != null) {
        try {
          bw.close();
        } catch (IOException ignored) {
        }
      }
    }
  }

  /**
   * Read file and filter out specific lines.
   */
  public static String readTextWithFilter(String fname, BiFunction<String, String, Boolean> filter,
      String pattern) {
    try {
      return String.join(Names.NEW_LINE,
          Files.lines(Paths.get(fname)).filter(line -> filter.apply(line, pattern))
              .collect(Collectors.toList()));
    } catch (IOException e) {
      e.printStackTrace();
    }
    return null;
  }
}

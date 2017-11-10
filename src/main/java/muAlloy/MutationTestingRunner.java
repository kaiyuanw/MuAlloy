package muAlloy;

import static parser.etc.Context.logger;
import static parser.etc.Names.HIDDEN_MUALLOY_DIR;
import static parser.etc.Names.MODEL_PATH;
import static parser.etc.Names.MUTANT_DIR;
import static parser.etc.Names.MUTANT_NAME;
import static parser.etc.Names.NEW_LINE;
import static parser.etc.Names.TEST_PATH;
import static parser.util.Util.printMutationTestingRunnerUsage;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.alloy4compiler.ast.Command;
import edu.mit.csail.sdg.alloy4compiler.parser.CompModule;
import edu.mit.csail.sdg.alloy4compiler.translator.A4Solution;
import edu.mit.csail.sdg.alloy4compiler.translator.TranslateAlloyToKodkod;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import muAlloy.opt.MutationTestingOpt;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import parser.etc.Names;
import parser.util.AlloyUtil;
import parser.util.FileUtil;
import parser.util.StringUtil;

/**
 * This class is a validator class to check if all non-equivalent mutants can be killed by the
 * generated tests.
 */
public class MutationTestingRunner {

  public static void mutationTest(MutationTestingOpt opt) throws Err {
    File mutantDir = new File(opt.getMutantDirPath());
    File[] mutantFiles = mutantDir.listFiles((d, name) -> name.endsWith(Names.DOT_ALS));
    Path hiddenMuAlloyDirPath = Paths.get(System.getProperty("user.home"), HIDDEN_MUALLOY_DIR)
        .toAbsolutePath();
    String modelFileName = StringUtil.afterSubstring(opt.getModelPath(), File.separator, true);
    String testFileName = StringUtil.afterSubstring(opt.getTestPath(), File.separator, true);
    FileUtil.createDirsIfNotExist(hiddenMuAlloyDirPath.toString());
    String model = FileUtil.readText(opt.getModelPath());
    String testSuite = FileUtil.readText(opt.getTestPath());
    FileUtil.writeText(model, Paths.get(hiddenMuAlloyDirPath.toString(), modelFileName).toString(),
        false);
    // Run tests against the original model.
    String hiddenTestPath = Paths.get(hiddenMuAlloyDirPath.toString(), testFileName).toString();
    String modelName = StringUtil.beforeSubstring(modelFileName, Names.DOT, true);
    FileUtil.writeText("open " + modelName + NEW_LINE + testSuite, hiddenTestPath, false);
    CompModule testModule = AlloyUtil.compileAlloyModule(hiddenTestPath);
    assert testModule != null;
    List<Boolean> testResultForModel = new ArrayList<>();
    for (Command cmd : testModule.getAllCommands()) {
      if (!cmd.label.toLowerCase().startsWith(Names.TEST_PREFIX)) {
        continue;
      }
      try {
        A4Solution ans = TranslateAlloyToKodkod.execute_command(
            A4Reporter.NOP, testModule.getAllReachableSigs(), cmd, opt.getOptions());
        testResultForModel.add(ans.satisfiable());
      } catch (Err err) {
        err.printStackTrace();
      }
    }
    // Run tests against each mutant model and compute mutation score.
    int totalMutantsNum = mutantFiles.length;
    int killedMutantNum = 0;
    for (File mutantFile : mutantFiles) {
      String mutantName = StringUtil.beforeSubstring(mutantFile.getName(), Names.DOT, true);
      String mutant = FileUtil.readText(mutantFile.getAbsolutePath());
      FileUtil.writeText(
          mutant,
          Paths.get(hiddenMuAlloyDirPath.toString(), MUTANT_NAME + Names.DOT_ALS).toString(),
          false);
      FileUtil.writeText("open " + MUTANT_NAME + NEW_LINE + testSuite, hiddenTestPath, false);
      testModule = AlloyUtil.compileAlloyModule(hiddenTestPath);
      assert testModule != null;
      boolean isKilled = false;
      int commandNumber = testModule.getAllCommands().size();
      for (int i = 0; i < commandNumber; i++) {
        Command cmd = testModule.getAllCommands().get(i);
        if (!cmd.label.toLowerCase().startsWith(Names.TEST_PREFIX)) {
          continue;
        }
        try {
          A4Solution ans = TranslateAlloyToKodkod.execute_command(
              A4Reporter.NOP, testModule.getAllReachableSigs(), cmd, opt.getOptions());
          isKilled = ans.satisfiable() != testResultForModel.get(i);
          if (isKilled) {
            killedMutantNum += 1;
            break;
          }
        } catch (Err err) {
          err.printStackTrace();
        }
      }
      logger.info("Mutant " + mutantName + " is " + (isKilled ? "" : "not ") + "killed.");
    }
    logger.info("Mutation Score: " + killedMutantNum + "/" + totalMutantsNum);
    // Remove the hidden MuAlloy directory.
    FileUtil.deleteDirectory(hiddenMuAlloyDirPath.toString());
  }

  private static MutationTestingOpt parseCommandLineArgs(String[] args) {
    Options options = new Options();
    options.addRequiredOption("o", MODEL_PATH, true, "Path of the original model.");
    options.addRequiredOption("m", MUTANT_DIR, true, "Mutant directory.");
    options.addRequiredOption("t", TEST_PATH, true, "Path of mutant killing tests.");

    CommandLineParser parser = new DefaultParser();
    HelpFormatter formatter = new HelpFormatter();

    try {
      CommandLine commandLine = parser.parse(options, args);
      Path modelPath = Paths.get(commandLine.getOptionValue(MODEL_PATH)).toAbsolutePath();
      if (!FileUtil.fileExists(modelPath.toString())) {
        logger.error("Cannot find model at " + modelPath);
        printMutationTestingRunnerUsage(formatter, options);
        return null;
      }
      Path mutantDir = Paths.get(commandLine.getOptionValue(MUTANT_DIR)).toAbsolutePath();
      if (!FileUtil.fileExists(mutantDir.toString())) {
        logger.error("Cannot find mutant directory at " + mutantDir);
        printMutationTestingRunnerUsage(formatter, options);
        return null;
      }
      Path testPath = Paths.get(commandLine.getOptionValue(TEST_PATH)).toAbsolutePath();
      if (!FileUtil.fileExists(testPath.toString())) {
        logger.error("Cannot find test suite at " + testPath);
        printMutationTestingRunnerUsage(formatter, options);
        return null;
      }
      return new MutationTestingOpt(
          modelPath.toString(), mutantDir.toString(), testPath.toString());
    } catch (ParseException e) {
      logger.error(e.getMessage());
      printMutationTestingRunnerUsage(formatter, options);
      return null;
    }
  }

  public static void main(String[] args) throws Err {
    MutationTestingOpt opt = parseCommandLineArgs(args);
    if (opt == null) {
      return;
    }
    mutationTest(opt);
  }
}

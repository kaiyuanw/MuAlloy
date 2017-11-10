package parser.util;

import muAlloy.MutantGenerator;
import muAlloy.MutationTestingRunner;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Options;

public class Util {

  public static int CLI_USAGE_DESCRIPTION_WIDTH = 1000;

  public static void printMutantGeneratorUsage(HelpFormatter formatter, Options options) {
    formatter.printHelp(
        CLI_USAGE_DESCRIPTION_WIDTH,
        MutantGenerator.class.getSimpleName(),
        "Generates non-equivalent mutants for a given model.  "
            + "For each non-equivalent mutant, the tool creates an AUnit test case that kills it.  "
            + "The mutants are stored in a user given directory.",
        options,
        null,
        true);
  }

  public static void printMutationTestingRunnerUsage(HelpFormatter formatter, Options options) {
    formatter.printHelp(
        CLI_USAGE_DESCRIPTION_WIDTH,
        MutationTestingRunner.class.getSimpleName(),
        "Collect AUnit tests result for the original model as well as all mutants.  "
            + "Then, reports the mutation score.",
        options,
        null,
        true);
  }
}

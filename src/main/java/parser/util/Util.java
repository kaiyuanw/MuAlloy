package parser.util;

import muAlloy.MutantGenerator;
import muAlloy.MutationTestingRunner;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Options;

public class Util {

  public static void printMutantGeneratorUsage(HelpFormatter formatter, Options options) {
    formatter.printHelp(MutantGenerator.class.getSimpleName()
            + " generates non-equivalent mutants for a given model.  "
            + "For each non-equivalent mutant, the tool creates an AUnit test case that kills it.  "
            + "The mutants are stored in a user given directory.",
        options);
  }

  public static void printMutationTestingRunnerUsage(HelpFormatter formatter, Options options) {
    formatter.printHelp(MutationTestingRunner.class.getSimpleName()
        + " runs an AUnit test suite on both the original model and all mutant models, "
        + "and reports the mutation score.", options);
  }
}

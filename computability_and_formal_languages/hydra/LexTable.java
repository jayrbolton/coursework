import java.util.HashMap;
import java.io.*;

public class LexTable {
    
    // LexTable = {<RegExp, LexemeType>}     where LexemeType can be null

    private HashMap<String, String> table;
    private static final String filename = "grammar";
    private BufferedReader input;
    private String line;

    public LexTable() {
        try {
            input = new BufferedReader (new FileReader(filename));
        }
        catch (FileNotFoundException e) {
            System.out.println("Must supply a lexeme table file (see manual).");
            System.exit(1);
        } 
        String source = "";
        do {
            try {
                line = input.readLine();
                source += '\n' + line;
                System.out.println(line);
            }
            catch (IOException e) {
                System.err.println(e);
                System.exit(1);
            } 
        } while (!(line == null));
        System.out.println('\n' + source);
        String[] lexemes = source.split("\".*\"");
        for (int i = 0; i < lexemes.length; i++)  System.out.println(lexemes[i]);

    }

    public static void main(String[] argv) {
        LexTable lt = new LexTable();
    }
}

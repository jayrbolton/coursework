import java.util.HashMap;

public class Lexeme {
    
    private String regexp;
    private String val;
    private int line;
    private int col;

    public Lexeme (String r, String v, int l, int c) {
        regexp = r; val = v; line = l; col = c;
    }

}

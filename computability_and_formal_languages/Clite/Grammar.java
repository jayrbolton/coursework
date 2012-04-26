
// Data structure:
import java.util.ArrayList;
import java.util.HashMap;

public class Grammar {

    public static final String[] terms = {
        "{", "}", "[", "]", "(", ")", ",", ".", ";", "+", "-", "*", "/", "%",
        "&&", "||", "&", "|", "!", "!=", "~", ":", ":=", "=", "<", "<=", ">",
        ">=", "->", "Void", "Int", "Bool", "Char", "Float", "True", "False"
    };

    public static final String comment = "--";

    public static final String ignore = " \t\r\n";

    // Identifier, int, float, and EOF
    public static final String[] patterns = {
        "[a-zA-Z][a-zA-Z_`0-9]*", "[0-9]*", "[0-9]*\\.[0-9]*", "\\004"
    };

    public static final Object[][] rules = {
        {NT.Expression, Term, BinOp, Term},
        {NT.Expression, Term},
        {NT.Term, NT.Literal, NT.UnOp},
        {NT.Term, NT.Term},
        {NT.BinOp, "+"},
        {NT.UnOp, "!"},
        {NT.Literal, "[0-9]*"}
    }

    public Grammar () {}

    public static void main(String[] argv) {
    }
}

public class LRItem extends Grammar {
    private Production p;
    private int dot;
    LRItem(Production p, int dot) {this.p=p; this.dot=dot;}
}

public class Production extends Grammar {
    // List of terms/nonterms. The item at index 0 is always the LHS
    private ArrayList<Object> p; 
    Production(Object[] xs) { p = new ArrayList<Object>(xs); }
}

public enum NT extends Grammar {
    Expression, Term, BinOp, UnOp, Literal
}

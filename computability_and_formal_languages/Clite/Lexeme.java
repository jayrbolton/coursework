import java.util.ArrayList;

public class Lexeme {


    //Fields
    private static String type;
    private static String val;
    private static int lineno;
    private static int col;

    //Constructors
    Lexeme (String t, String v, int l, int c) {
        type = t; val = v; lineno = l; col = c;
    }

    //Accessors
    public String type() {return type;}
    public String val() {return val;}
    public static int lineno() {return lineno;}
    public static int col() {return col;}

    //Converters
    public String toString() {
        return "([" + lineno + "," + col + "]" + type + "," + val + ")";
    }

}

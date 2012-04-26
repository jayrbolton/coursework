import java.util.ArrayList;
import java.io.*;

public class Lexis {

    private ArrayList<Lexeme> lx;
    private Source src;

    private ArrayList<String> words;
    private ArrayList<String> ops;
    private ArrayList<String> meta;

    public Lexis (Source s) {
        src = s;
        src.next();

        // get user-supplied lexemes
        BufferedReader input;
        try {
            input = new BufferedReader (new FileReader("allowed"));
        }
        catch (FileNotFoundException e) {
            System.out.println("A file called 'allowed' with a list of your lexemes is required. See the manual for its formatting rulesrc.");
            System.exit(1);
        }

        String w = input.readLine();
        while (!src.equals(null)) {
            System.out.println(w);
            input.readLine();
        }
    }

    public void next () { // Return next token
        while (src.ch() != '\004') { // while current ch is not at end of file
            System.out.println("src.ch()=" + src.ch());
            src.next();
        }
    }

/*
    public Lexeme next () { // Return next token
        do {
            if (isLetter(src.ch())) { // ident or keyword
                String w = getWord();
                return getIdOrKeyword(w);
            }
            else if (isDigit(src.ch())) { // int or float literal
                String number = getNumber();
                if (src.ch() != '.')  // int Literal
                    return new Lexeme(Lexeme.Type.IntValue, number, src.lineno(), src.col());
                number += getNumber();
                return new Lexeme(Lexeme.Type.FloatValue, number, src.lineno(), src.col());
            } 
            else switch (src.ch()) {
            case ' ': case '\t': case '\r': case '\n':
                src.next();
                break;
            case '/':  // divide
                src.next();
                return new Lexeme(Lexeme.Type.Divide, "/", src.lineno(), src.col());
            case '\'':  // char literal
                char ch1 = src.next();
                src.next(); // get '
                src.next();
                return new Lexeme(Lexeme.Type.CharValue, ch1+"", src.lineno(), src.col());
            case '\004': // End of file
                return new Lexeme(Lexeme.Type.Eof, "<<EOF>>", src.lineno(), src.col());
            case '+': src.next();
                return new Lexeme(Lexeme.Type.Add, "+", src.lineno(), src.col());
            case '%': src.next();
                return new Lexeme(Lexeme.Type.Modulus, "%", src.lineno(), src.col());
            case '-': src.next();
                src.next();
                if (src.ch() == '>') {
                    src.next();
                    return new Lexeme(Lexeme.Type.Arrow, "->", src.lineno(), src.col()); 
                }
                else if (src.ch() == '-') { //comment
                    do { src.next(); } while (src.ch() != '\n');
                    break;
                }
                else {
                    src.next();
                    return new Lexeme(Lexeme.Type.Subtract, "-", src.lineno(), src.col());
                }
            case '(': src.next();
                return new Lexeme(Lexeme.Type.LeftParen, "(", src.lineno(), src.col());
            case ')': src.next();
                return new Lexeme(Lexeme.Type.RightParen, ")", src.lineno(), src.col());
            case '{': src.next();
                return new Lexeme(Lexeme.Type.LeftBrace, "{", src.lineno(), src.col());
            case '}': src.next();
                return new Lexeme(Lexeme.Type.RightBrace, "{", src.lineno(), src.col());

            case ';': src.next();
                return new Lexeme(Lexeme.Type.Semicolon, ";", src.lineno(), src.col());

            case ',': src.next();
                return new Lexeme(Lexeme.Type.Comma, ",", src.lineno(), src.col());
            case '[': src.next();
                return new Lexeme(Lexeme.Type.LeftBracket, " ", src.lineno(), src.col());
            case ']': src.next();
                return new Lexeme(Lexeme.Type.RightBracket, " ", src.lineno(), src.col());
            case '&': check('&'); 
                return new Lexeme(Lexeme.Type.And, "&&", src.lineno(), src.col());
            case '|': check('|'); 
                return new Lexeme(Lexeme.Type.Or, "||", src.lineno(), src.col());
            case ':':
                return checkOps('=', Lexeme.Type.Colon, Lexeme.Type.Assign);
            case '=':
                return checkOps('=', Lexeme.Type.Equals, Lexeme.Type.RelEqual);
            case '*': 
                return checkOps('*', Lexeme.Type.Multiply, Lexeme.Type.Power);
            case '<':
                return checkOps('=', Lexeme.Type.Less, Lexeme.Type.LessOrEqual); 
            case '>':
                return checkOps('=', Lexeme.Type.Greater, Lexeme.Type.GreaterOrEqual);
            case '!':
                return checkOps('=', Lexeme.Type.Not, Lexeme.Type.NotEqual);
            default:  
                System.err.println("Lexical error: illegal character " + src.ch());
                System.err.println("At line " + src.lineno() + ",column " + src.col());
            } // switch
        } while (true);
    } // next
*/

    private boolean isLetter(char c) {
        return c>='a' && c<='z' || c>='A' && c<='Z';
    }
    private boolean isDigit(char c) { return c >= '0' && c <= '9'; }

    private String getWord() {
        String r = "";
        do {
            r += src.ch();
            src.next();
        } while (isLetter(src.ch()) || isDigit(src.ch()));
        return r;
    }

    private String getNumber() {
        String r = "";
        do {
            r += src.ch();
            src.next();
        } while (isDigit(src.ch()));
        return r;
    }

/*
    private Lexeme getIdOrKeyword(String w) {
        int l = src.lineno();
        int c = src.col();
        if (w.equals("Int"))
            return new Lexeme(Lexeme.Type.IntType, w, l, c);
        else if (w.equals("Bool"))
            return new Lexeme(Lexeme.Type.BoolType, w, l, c);
        else if (w.equals("Char"))
            return new Lexeme(Lexeme.Type.CharType, w, l, c);
        else if (w.equals("Float"))
            return new Lexeme(Lexeme.Type.FloatType, w, l, c);
        else if (w.equals("If"))
            return new Lexeme(Lexeme.Type.If, w, l, c);
        else if (w.equals("Else"))
            return new Lexeme(Lexeme.Type.Else, w, l, c);
        else if (w.equals("While"))
            return new Lexeme(Lexeme.Type.While, w, l, c);
        else if (w.equals("True"))
            return new Lexeme(Lexeme.Type.BoolValue, w, l, c);
        else if (w.equals("False"))
            return new Lexeme(Lexeme.Type.BoolValue, w, l, c);
        else return new Lexeme(Lexeme.Type.Identifier, w, l, c);
    }
*/

        private void check(char c) {
            src.next();
            if (src.ch() != c) {
                System.err.println("Lexical error: illegal character, expecting " + c);
                System.err.println("At line " + src.lineno() + ",column " + src.col());
                System.exit(1);
            }
            src.next();
        }

/*
        private Lexeme checkOps(char c, Lexeme.Type one, Lexeme.Type two) {
            src.next();
            if (src.ch() == c) {
                Lexeme lexeme = new Lexeme(one, src.lineno(), src.col());
                return lexeme;
            }
            else {
                Lexeme lexeme = new Lexeme(two, src.lineno(), src.col());
                return lexeme;
            }
        }
*/

        public static void main (String[] argv) {
            //testing:
            Source source = new Source(argv[0]);
            Lexis lexis = new Lexis(source);
            lexis.next();
        }

}

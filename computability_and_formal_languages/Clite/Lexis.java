public class Lexis {

    private Lexeme lex; // Current lexeme
    private Source s;
    private Grammar g;

    //Constructor
    Lexis (Source s, Grammar g) { 
        this.s = s; this.g = g;
    }

    public Lexeme next() {
        String result="", test="", pattern="", skip="";
        skip = s.matchRegex("[" + g.ignore + g.comment + "]*");
        s.truncate(skip.length());
        for (String term : g.terms) { // Try to match keyword
            test = s.matchKeyword(term);
            if (test.length() > result.length()) {
                result = test;
                pattern = term;
            }
        }
        if (result.length() == 0) { // Try to match pattern
            for (String regex : g.patterns) {
                test = s.matchRegex(regex);
                if (test.length() > result.length()) {
                    result = test;
                    pattern = regex;
                }
            }
        }
        if (result.length() == 0) { // Unsuccessful lex.
            System.err.println("Error: unable to lex " + s.source().charAt(0));
            System.exit(1);
        }
        s.truncate(result.length());
        System.out.println("[" + pattern + " , " + result + "]");
        lex = new Lexeme(pattern, result, 0,0);
        return lex;
    }

    //Accessors
    public Lexeme lex() {return lex;}
    public Source source() {return s;}

    public static void main(String[] argv) {
        Grammar g = new Grammar();
        Source s = new Source(argv[0]);
        Lexis l = new Lexis(s, g);
        do {
            l.next();
        } while(!l.lex().val().equals("\004"));
    }


}

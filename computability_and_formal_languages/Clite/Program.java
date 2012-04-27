public class Program {
    // Program = Declarations decpart ; Block body
    Block body;

    Program (Lexis l) {
        l.match(Lexeme.Type.Main);
        l.match(Lexeme.Type.LeftParen);
        l.match(Lexeme.Type.RightParen);
        l.match(Lexeme.Type.Arrow);
        l.match(Lexeme.Type.Int);
        body = new Block(l);
    }

    public boolean V (TypeMap tm) { return body.V(tm); }

    public String display () {
        String s = "Program:\n";
        s += "  Main block:\n";
        s += body.display(1);
        return s;
    }

    public static void main (String[] argv) {
        Source s = new Source(argv[0]);
        Lexis l = new Lexis(s);
        Program p = new Program(l);
        System.out.println(p.display());
        TypeMap tm = new TypeMap();
        System.out.println("\n\nParsing: " + p.V(tm));
    }

}

import java.util.*;
import java.io.IOException;

public class Parser {
    // Recursive descent parser that inputs a C++Lite program and
    // generates its abstract syntax.  Each method corresponds to
    // a concrete syntax grammar rule, which appears as a comment
    // at the beginning of the method.

    Token token;          // current token from the input stream
    Lexer lexer;

    public Parser(Lexer ts) { // Open the C++Lite source program
        lexer = ts;                          // as a token stream, and
        token = lexer.next();            // retrieve its first Token
    }

    private String match (TokenType t) {
        String value = token.value();
        if (token.type().equals(t))
            token = lexer.next();
        else
            error(t);
        return value;
    }

    private void error(TokenType tok) {
        System.err.println("Syntax error: expecting: " + tok
                           + "; saw: " + token);
        System.exit(1);
    }

    private void error(String tok) {
        System.err.println("Syntax error: expecting: " + tok
                           + "; saw: " + token);
        System.exit(1);
    }

    public Program program() {
        // Program --> void main ( ) '{' Declarations Statements '}'
        Program p;
        TokenType[ ] header = {TokenType.Int, TokenType.Main,
                          TokenType.LeftParen, TokenType.RightParen};
        for (int i=0; i<header.length; i++)   // bypass "int main ( )"
            match(header[i]);

        match(TokenType.LeftBrace);
        p = new Program(declarations(), statements());
        match(TokenType.RightBrace);

        return p;
    }

    private Declarations declarations() {
        // Declarations --> { Declaration }
        Declarations ds = new Declarations();
        while(isType()) {
            ds.addAll(declaration());
        }
        return ds;
    }

    // declaration must return Declarations to account for
    // declarations using commas, such as int x, y, z;
    private Declarations declaration () {
        // Declaration  --> Type Identifier { , Identifier } ;
        Type t = null;
        Declarations ds = new Declarations();
        if (isType()) {
            t = new Type(match(token.type())); 
        }
        else { error("type declaration"); }
        Variable v = new Variable(match(TokenType.Identifier)); 
        ds.add(new Declaration(v,t));
        while(token.type().equals(TokenType.Comma)) {
            match(TokenType.Comma);
            v = new Variable(match(TokenType.Identifier));
            ds.add(new Declaration(v,t));
        }
        match(TokenType.Semicolon);
        return ds;
    }

    private Type type () {
        // Type  -->  int | bool | float | char
        Type t = new Type(match(token.type()));
        return t;
    }

    private Block statements () {
        // Block --> '{' Statements '}'
        // Actually, it's: Statements --> { Statement }
        // the non-meta braces are matched whenever 
        // statements() is called and we want a block
        Block b = new Block();
        while(!token.type().equals(TokenType.RightBrace)) {
            b.members.add(statement());
        }
        return b;
    }

    private Statement statement () {
        // Statement --> ; | Block | Assignment 
        //                 | IfStatement | WhileStatement
        Statement s = null;
        if (token.type().equals(TokenType.Semicolon)) {
            match(TokenType.Semicolon);
        }
        else if (token.type().equals(TokenType.LeftBrace)) {
            match(TokenType.LeftBrace);
            s = statements();
            match(TokenType.RightBrace);
        }
        else if (token.type().equals(TokenType.Identifier)) {
            s = assignment();
        }
        else if (token.type().equals(TokenType.If)) {
            s = ifStatement();
        }
        else if (token.type().equals(TokenType.While)) {
            s = whileStatement();
        }
        else {
            error("Assignment, Block, If statement, or Loop");
        }
        return s;
    }

    private Assignment assignment () {
        // Assignment --> Identifier = Expression ;
        Variable target = new Variable(match(TokenType.Identifier));
        match(TokenType.Assign);
        Expression source = expression();
        match(TokenType.Semicolon);
        return new Assignment(target, source);
    }

    private Conditional ifStatement () {
        // IfStatement --> if ( Expression ) Statement [ else Statement ]
        match(TokenType.If);
        match(TokenType.LeftParen);
        Expression e = expression();
        match(TokenType.RightParen);
        Statement s = statement();
        Conditional c;
        if (token.type().equals(TokenType.Else)) {
            match(TokenType.Else);
            Statement s2 = statement();
            c = new Conditional(e, s, s2);
        }
        else { c = new Conditional(e, s); }
        return c;
    }

    private Loop whileStatement () {
        // WhileStatement --> while ( Expression ) Statement
        match(TokenType.While);
        match(TokenType.LeftParen);
        Expression e = expression();
        match(TokenType.RightParen);
        Statement s = statement();
        return new Loop(e, s); 
    }

    private Expression expression () {
        // Expression --> Conjunction { || Conjunction }
        Expression e = conjunction();
        while(token.type().equals(TokenType.Or)) {
            Operator op = new Operator(match(TokenType.Or)); 
            Expression term2 = conjunction();
            e = new Binary(op, e, term2);
        }
        return e;
    }

    private Expression conjunction () {
        // Conjunction --> Equality { && Equality }
        Expression e = equality();
        while(token.type().equals(TokenType.And)) {
            Operator op = new Operator(match(TokenType.And));
            Expression term2 = equality();
            e = new Binary(op, e, term2);
        }
        return e;
    }

    private Expression equality () {
        // Equality --> Relation [ EquOp Relation ]
        Expression e = relation();
        if (isEqualityOp()) {
            Operator op = new Operator(match(TokenType.Equals));
            Expression term2 = relation();
            e = new Binary(op, e, term2);
        }
        return e;
    }

    private Expression relation (){
        // Relation --> Addition [RelOp Addition]
        Expression e = addition();
        if (isRelationalOp()) {
            Operator op = new Operator(match((token.type())));
            Expression term2 = relation();
            e = new Binary(op, e, term2);
        }
        return e;
    }

    private Expression addition () {
        // Addition --> Term { AddOp Term }
        Expression e = term();
        while (isAddOp()) {
            Operator op = new Operator(match(token.type()));
            Expression term2 = term();
            e = new Binary(op, e, term2);
        }
        return e;
    }

    private Expression term () {
        // Term --> Factor { MultiplyOp Factor }
        Expression e = factor();
        while (isMultiplyOp()) {
            Operator op = new Operator(match(token.type()));
            Expression term2 = factor();
            e = new Binary(op, e, term2);
        }
        return e;
    }

    private Expression factor() {
        // Factor --> [ UnaryOp ] Primary
        if (isUnaryOp()) {
            Operator op = new Operator(match(token.type()));
            Expression term = primary();
            return new Unary(op, term);
        }
        else return primary();
    }

    private Expression primary () {
        // Primary --> Identifier | Literal | ( Expression )
        //             | Type ( Expression )
        Expression e = null;
        if (token.type().equals(TokenType.Identifier)) {
            e = new Variable(match(TokenType.Identifier));
        } else if (isLiteral()) {
            e = literal();
        } else if (token.type().equals(TokenType.LeftParen)) {
            match(TokenType.LeftParen);
            e = expression();
            match(TokenType.RightParen);
        } else if (isType( )) {
            Operator op = new Operator(match(token.type()));
            match(TokenType.LeftParen);
            Expression term = expression();
            match(TokenType.RightParen);
            e = new Unary(op, term);
        } else error("Identifier | Literal | ( | Type");
        return e;
    }

    private Value literal( ) {
        Value v = null;
        if (token.type().equals(TokenType.IntLiteral)) {
            v = 
                new IntValue(Integer.parseInt(
                    match(TokenType.IntLiteral)));
        }
        else if (token.type().equals(TokenType.FloatLiteral)) {
            v =
                new FloatValue(Float.valueOf(
                    match(TokenType.FloatLiteral)));
        }
        else if (token.type().equals(TokenType.CharLiteral)) {
            v = new CharValue(match(TokenType.CharLiteral).charAt(0));
        }
        else if (token.type().equals(TokenType.Bool)) {
            v = 
                new BoolValue(Boolean.parseBoolean
                    (match(TokenType.IntLiteral)));
        }
        else if (token.type().equals(TokenType.False)) {
            v = 
                new BoolValue(Boolean.parseBoolean
                    (match(TokenType.False)));
        }
        else if (token.type().equals(TokenType.True)) {
            v = 
                new BoolValue(Boolean.parseBoolean
                    (match(TokenType.True)));
        }
        return v;
    }


    private boolean isAddOp( ) {
        return token.type().equals(TokenType.Plus) ||
               token.type().equals(TokenType.Minus);
    }

    private boolean isMultiplyOp( ) {
        return token.type().equals(TokenType.Multiply) ||
               token.type().equals(TokenType.Divide);
    }

    private boolean isUnaryOp( ) {
        return token.type().equals(TokenType.Not) ||
               token.type().equals(TokenType.Minus);
    }

    private boolean isEqualityOp( ) {
        return token.type().equals(TokenType.Equals) ||
            token.type().equals(TokenType.NotEqual);
    }

    private boolean isRelationalOp( ) {
        return token.type().equals(TokenType.Less) ||
               token.type().equals(TokenType.LessEqual) ||
               token.type().equals(TokenType.Greater) ||
               token.type().equals(TokenType.GreaterEqual);
    }

    private boolean isType( ) {
        return token.type().equals(TokenType.Int)
            || token.type().equals(TokenType.Bool)
            || token.type().equals(TokenType.Float)
            || token.type().equals(TokenType.Char);
    }

    private boolean isLiteral( ) {
        return token.type().equals(TokenType.IntLiteral) ||
            isBooleanLiteral() ||
            token.type().equals(TokenType.FloatLiteral) ||
            token.type().equals(TokenType.CharLiteral);
    }

    private boolean isBooleanLiteral( ) {
        return token.type().equals(TokenType.True) ||
            token.type().equals(TokenType.False);
    }

    public static void main(String args[]) {
        Parser parser  = new Parser(new Lexer(args[0]));
        Program prog = parser.program();
        String ast = prog.display();
        System.out.println(ast);
        // Saves AST to a text file
        try {
            Format.saveTextFile(ast, "AST.txt");
        }
        catch (IOException e) {
            System.out.println("Unable to create file: "+e.getMessage());
        }

    } //main

} // Parser

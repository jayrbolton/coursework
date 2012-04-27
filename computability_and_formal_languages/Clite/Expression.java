public class Expression {
    // Expression = Variable | Value | Binary | Unary
    private Expression e;

    Expression() {}
    Expression (Lexis l) {
        // Expression --> Conjunction { || Conjunction }
        e = conjunction(l);
        while(l.lex().type().equals(Lexeme.Type.Or)) {
            Operator op = Operator.Or;
            l.match();
            Expression term2 = conjunction(l);
            e = new Binary(op, e, term2);
        }
    }

    private Expression conjunction (Lexis l) {
        // Conjunction --> Equality { && Equality }
        Expression ex = equality(l);
        while(l.lex().type().equals(Lexeme.Type.And)) {
            Operator op = Operator.And;
            l.match();
            Expression term2 = equality(l);
            ex = new Binary(op, ex, term2);
        }
        return ex;
    }

    private Expression equality (Lexis l) {
        // Equality --> Relation [ EquOp Relation ]
        Expression ex = relation(l);
        if (l.lex().isEqOp()) {
            Operator op = Operator.valueOf(l.lex().type().toString());
            l.match();
            Expression term2 = relation(l);
            ex = new Binary(op, ex, term2);
        }
        return ex;
    }

    private Expression relation (Lexis l){
        // Relation --> Addition [RelOp Addition]
        Expression ex = addition(l);
        if (l.lex().isRelOp()) {
            Operator op = Operator.valueOf(l.lex().type().toString());
            l.match();
            Expression term2 = relation(l);
            ex = new Binary(op, ex, term2);
        }
        return ex;
    }

    private Expression addition (Lexis l) {
        // Addition --> Term { AddOp Term }
        Expression ex = term(l);
        while (l.lex().isAddOp()) {
            Operator op = Operator.valueOf(l.lex().type().toString());
            l.match();
            Expression term2 = term(l);
            ex = new Binary(op, ex, term2);
        }
        return ex;
    }

    private Expression term (Lexis l) {
        // Term --> Factor { MultiplyOp Factor }
        Expression ex = factor(l);
        while (l.lex().isMulOp()) {
            Operator op = Operator.valueOf(l.lex().type().toString());
            l.match();
            Expression term2 = factor(l);
            ex = new Binary(op, ex, term2);
        }
        return ex;
    }

    private Expression factor(Lexis l) {
        // Factor --> [ UnaryOp ] Primary
        if (l.lex().isUnaryOp()) {
            Operator op = Operator.valueOf(l.lex().type().toString());
            l.match();
            Expression term = primary(l);
            return new Unary(op, term);
        }
        else return primary(l);
    }

    private Expression primary (Lexis l) {
        // Primary --> Identifier | Literal | ( Expression )
        //             | Type ( Expression )
        Expression ex = null;
        if (l.lex().type().equals(Lexeme.Type.Identifier)) {
            ex = new Variable(l);
        } else if (l.lex().isLiteral()) {
            ex = new Value(l);
        } else if (l.lex().type().equals(Lexeme.Type.LeftParen)) {
            l.match(Lexeme.Type.LeftParen);
            ex = new Expression(l);
            l.match(Lexeme.Type.RightParen);
        } else if (l.lex().isType( )) {
            Operator op = Operator.valueOf(l.lex().type().toString());
            l.match(Lexeme.Type.LeftParen);
            Expression term = new Expression(l);
            l.match(Lexeme.Type.RightParen);
            ex = new Unary(op, term);
        } else l.prserror("Identifier | Literal | ( | Type");
        return ex;
    }

    public Type type(TypeMap tm) { return e.type(tm); }

    public boolean V (TypeMap tm) { return e.V(tm); }

    public String display (int tabs) { return e.display(tabs); }

}

class Variable extends Expression {
    // Variable = String id
    private String id;

    Variable (String s) { id = s; }
    Variable (Lexis l) { 
        id = l.lex().val();
        l.match(Lexeme.Type.Identifier);
    }

    public Type type (TypeMap tm) { return tm.map().get(this); }

    public boolean V (TypeMap tm) { return tm.map().containsKey(this); }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Variable: " + id;
        return s;
    }

    public String id() { return id; }
    public boolean equals(Object v) { return id.equals(((Variable)v).id()); }
    public int hashCode () { return id.hashCode(); }
}

class Value extends Expression {

    private Value v;
    protected Type type;
    protected boolean undef = true;
    
    Value () {}
    Value (Lexis l) {
        String s;
        if (l.lex().type().equals(Lexeme.Type.IntLiteral)) {
            s = l.lex().val();
            v = new IntValue(Integer.parseInt(s));
            type = Type.Int;
            l.match(Lexeme.Type.IntLiteral);
        }
        else if (l.lex().type().equals(Lexeme.Type.FloatLiteral)) {
            s = l.lex().val();
            v = new FloatValue(Float.valueOf(s));
            type = Type.Float;
            l.match(Lexeme.Type.FloatLiteral);
        }
        else if (l.lex().type().equals(Lexeme.Type.CharLiteral)) {
            s = l.lex().val();
            v = new CharValue(s.charAt(0));
            type = Type.Char;
            l.match(Lexeme.Type.CharLiteral);
        }
        else if (l.lex().type().equals(Lexeme.Type.Bool)) {
            s = l.lex().val();
            v = new BoolValue(Boolean.parseBoolean(s));
            type = Type.Bool;
            l.match(Lexeme.Type.IntLiteral);
        }
        else if (l.lex().type().equals(Lexeme.Type.False)) {
            s = l.lex().val();
            v = new BoolValue(Boolean.parseBoolean(s));
            type = Type.Bool;
            l.match(Lexeme.Type.False);
        }
        else if (l.lex().type().equals(Lexeme.Type.True)) {
            s = l.lex().val();
            v = new BoolValue(Boolean.parseBoolean(s));
            type = Type.Bool;
            l.match(Lexeme.Type.True);
        }
    }

    public Type type(TypeMap tm) { return type; }

    public boolean V (TypeMap tm) { return true; }

    public String display(int tabs) { return v.display(tabs); }

}

class IntValue extends Value {
    private int value = 0;

    IntValue () { type = Type.Int; }
    IntValue (int v) { this( ); value = v; undef = false; }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Value: ";
        if (undef) s += "undef";
        else s += "" + value;
        return s;
    }
}

class BoolValue extends Value {
    private boolean value = false;

    BoolValue ( ) { type = Type.Bool; }

    BoolValue (boolean v) { this( ); value = v; undef = false; }

    boolean boolValue ( ) {
        assert !undef : "reference to undefined bool value";
        return value;
    }

    int intValue ( ) {
        assert !undef : "reference to undefined bool value";
        return value ? 1 : 0;
    }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Value: ";
        if (undef) s += "undef";
        else s += "" + value;
        return s;
    }
}

class CharValue extends Value {
    private char value = ' ';

    CharValue ( ) { type = Type.Char; }

    CharValue (char v) { this( ); value = v; undef = false; }

    char charValue ( ) {
        assert !undef : "reference to undefined char value";
        return value;
    }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Value: ";
        if (undef) s += "undef";
        else s += "" + value;
        return s;
    }
}

class FloatValue extends Value {
    private float value = 0;

    FloatValue ( ) { type = Type.Float; }

    FloatValue (float v) { this( ); value = v; undef = false; }

    float floatValue ( ) {
        assert !undef : "reference to undefined float value";
        return value;
    }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Value: ";
        if (undef) s += "undef";
        else s += "" + value;
        return s;
    }
}

class Binary extends Expression {
    // Binary = Operator op; Expression term1, term2
    Operator op;
    Expression term1, term2;

    Binary (Operator o, Expression l, Expression r) {
        op = o; term1 = l; term2 = r;
    } // binary

    public String display(int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Binary:\n";
        s += Format.repeat("  ", tabs+1);
        s += "Operator: " + op + "\n";
        s += Format.repeat("  ", tabs+1);
        s += "First term:\n";
        s += term1.display(tabs+2);
        s += "\n";
        s += Format.repeat("  ", tabs+1);
        s += "Second term:\n";
        s += term2.display(tabs+2);
        return s;
    }

    public boolean V (TypeMap tm) { 
        if (!term1.V(tm)) return false;
        else if (!term2.V(tm)) return false;
        return true;
    }
 
    // We will have already validated that term1.type() == term2.type()
    public Type type(TypeMap tm) { return term1.type(tm); }

}

class Unary extends Expression {
    // Unary = Operator op; Expression term
    Operator op;
    Expression term;

    Unary (Operator o, Expression e) {
        op = o; term = e;
    } // unary

    public String toString () { return "Unary"; }

    public boolean V (TypeMap tm) {
        if (!term.V(tm)) return false;
        else return true;
    }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Binary:\n";
        s += Format.repeat("  ", tabs+1);
        s += "Operator: " + op.toString() + "\n";
        s += term.display(tabs+1);
        return s;
    }

    public Type type(TypeMap tm) { return term.type(tm); }
}

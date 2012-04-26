import java.util.ArrayList;

public class Statement { 
    // Statement -> Skip | Declaration | Block | Assignment | Conditional | Loop
    Statement s;

    Statement () {}
    Statement (Lexis l) {
        /*
            Algorithm:
            for each l in First(Statement):
                :q


        */
        if (l.lex().type().equals(Lexeme.Type.Semicolon))
            l.match();
        else if (l.lex().isType())
            s = new Declaration(l);
        else if (l.lex().type().equals(Lexeme.Type.LeftBrace))
            s = new Block(l);
        else if (l.lex().type().equals(Lexeme.Type.Identifier))
            s = new Assignment(l);
        else if (l.lex().type().equals(Lexeme.Type.If))
            s = new Conditional(l);
        else if (l.lex().type().equals(Lexeme.Type.While))
            s = new Loop(l);
        else l.prserror("Invalid statement");
    }

    public boolean V (TypeMap tm) { return s.V(tm); }

    public String display (int tabs) {
        return s.display(tabs);
    }

}

class Skip extends Statement { }

class Declaration extends Statement {
// Declaration = Variable v; Type t

    private ArrayList<Variable> vs;
    private Type t;

    Declaration (Lexis l) {
         // Declaration  --> Type Identifier { , Identifier } ;
         vs = new ArrayList<Variable>();
         if (l.lex().isType()) {
             t = Type.valueOf(l.lex().type().toString());
             l.match();
         }
         else { l.prserror("Invalid type declaration."); }
         vs.add(new Variable(l));
         while (l.lex().type().equals(Lexeme.Type.Comma)) {
             l.match();
             vs.add(new Variable(l));
         }
         l.match(Lexeme.Type.Semicolon);
     }

     public boolean V (TypeMap tm) {
          // Check for dups within vs
          java.util.HashSet<Variable> set = new java.util.HashSet<Variable>();
          for (Variable v : vs) set.add(v);
          if (set.size() < vs.size()) return false;
          // Check for dups against the typemap
          for (Variable v : vs) if (tm.map().containsKey(v)) return false;
          tm.putDec(this);
          return true;
     }

     public String display (int tabs) {
        String s = Format.repeat("  ", tabs) + "Declaration:\n";
        s += Format.repeat("  ", tabs+1) + "Type: " + t.toString() + '\n';
        for (Variable var : vs) s+=var.display(tabs+1) + '\n';
        return s;
     }

     // Accessors
     public Type type() { return t; }
     public ArrayList<Variable> vs() { return vs; }
}

class Block extends Statement {
    // Block = Statement*
    //         (a Vector of members)
    private ArrayList<Statement> members;

    Block (Lexis l) {
        // Block -> '{' { Statement } '}'
        members = new ArrayList<Statement>();
        l.match(Lexeme.Type.LeftBrace);
        while (!l.lex().type().equals(Lexeme.Type.RightBrace)) {
            members.add(new Statement(l));
        }
        l.match(Lexeme.Type.RightBrace);
    }

    public boolean V (TypeMap tm) {
        for (Statement s : members) if (!s.V(tm)) return false;
        return true;
    }

    public String display (int tabs) {
        String s = "";
        for (int i = 0; i < members.size(); i++) {
            s += members.get(i).display(tabs+1) + "\n";
        }
        return s;
    }
}

class Assignment extends Statement {
    // Assignment = Variable target; Expression source
    private Variable target;
    private Expression source;

    Assignment (Lexis l) {
        // Assignment --> Identifier = Expression ;
        target = new Variable(l);
        l.match(Lexeme.Type.Assign);
        source = new Expression(l);
        l.match(Lexeme.Type.Semicolon);
    }

    public boolean V (TypeMap tm) {
       if (!tm.map().containsKey(target)) return false;
       else if (!source.V(tm)) return false;
       else if (!tm.map().get(target).equals(source.type(tm))) return false;
       else return true;
    }

    public String display(int tabs) { 
        String s = Format.repeat("  ", tabs);
        s += "Assignment:\n";
        s += target.display(tabs+1) + '\n';
        s += source.display(tabs+1);
        return s;
    }
}

class Conditional extends Statement {
    private Expression test;
    private Statement thenbranch, elsebranch;

    Conditional (Lexis l) {
        // Conditional --> if ( Expression ) Statement [ else Statement ]
        l.match(Lexeme.Type.If);
        l.match(Lexeme.Type.LeftParen);
        test = new Expression(l);
        l.match(Lexeme.Type.RightParen);
        thenbranch = new Statement(l);
        if (l.lex().type().equals(Lexeme.Type.Else)) {
            l.match(Lexeme.Type.Else);
            elsebranch = new Statement(l);
        }
    }

    public boolean V (TypeMap tm) {
        if (!test.V(tm)) return false;
        else if (!test.type(tm).equals(Type.Bool)) return false;
        else if (!thenbranch.V(tm)) return false;
        else if (elsebranch != null) if (!elsebranch.V(tm)) return false;
        return true;
    }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs) + "Conditional:\n";
        s += Format.repeat("  ", tabs+1) + "Test:\n";
        s += test.display(tabs+2) + '\n';
        s += Format.repeat("  ", tabs+1) + "Then Branch:\n";
        s += thenbranch.display(tabs+1) + '\n';
        if (elsebranch != null) {
            s += Format.repeat("  ", tabs+1) + "Else Branch:\n";
            s += elsebranch.display(tabs+1);
        }
        return s;
    }
    
}

class Loop extends Statement {
// Loop = Expression test; Statement body
    private Expression test;
    private Statement body;

    Loop (Lexis l) {
        // WhileStatement --> while ( Expression ) Statement
        l.match(Lexeme.Type.While);
        l.match(Lexeme.Type.LeftParen);
        test = new Expression(l);
        l.match(Lexeme.Type.RightParen);
        body = new Statement(l);
    }

    public boolean V (TypeMap tm) {
        if (!test.V(tm)) return false;
        else if (!test.type(tm).equals(Type.Bool)) return false;
        else if (!body.V(tm)) return false;
        else return true;
    }

    public String display (int tabs) {
        String s = Format.repeat("  ", tabs);
        s += "Loop:\n";
        s += Format.repeat("  ", tabs+1) + "Test:\n";
        s += test.display(tabs+2) + '\n';
        s += Format.repeat("  ", tabs+1) + "Body:\n";
        s += body.display(tabs+2);
        return s;
    }
}

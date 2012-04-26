// StaticTypeCheck.java

import java.util.*;

// Static type checking for Clite is defined by the functions
// V and the auxiliary functions typing and typeOf.  These
// functions use the classes in the Abstract Syntax of Clite.

public class StaticTypeCheck {

    public static TypeMap typing (Declarations d) {
        TypeMap map = new TypeMap();
        for (Declaration di : d)
            map.put (di.v, di.t);
        return map;
    }

    public static void check(boolean test, String msg) {
        if (test)  return;
        System.err.println(msg);
        System.exit(1);
    }

    public static void V (Declarations d) {
        for (int i=0; i<d.size() - 1; i++)
            for (int j=i+1; j<d.size(); j++) {
                Declaration di = d.get(i);
                Declaration dj = d.get(j);
                check( ! (di.v.equals(dj.v)),
                       "duplicate declaration: " + dj.v);
            }
    }

    public static void V (Program p) {
        V (p.decpart);
        V (p.body, typing (p.decpart));
    }

    public static Type typeOf (Expression e, TypeMap tm) {
        if (e instanceof Value) return ((Value)e).type;
        if (e instanceof Variable) {
            Variable v = (Variable)e;
            check (tm.containsKey(v), "undefined variable: " + v);
            return (Type) tm.get(v);
        }
        if (e instanceof Binary) {
            Binary b = (Binary)e;
            if (b.op.ArithmeticOp( )) {
                Type t1 = typeOf(b.term1,tm);    
                Type t2 = typeOf(b.term2,tm);
                // By the time we want to test typeOf on a binary, we should
                // already have types properly cast:
                check(t1.equals(t2), 
                    "Type error in expression: " + b.term1 + b.op + b.term2);
                if (t1.equals(Type.FLOAT))
                    return (Type.FLOAT);
                else if (t1.equals(Type.INT))
                    return (Type.INT);
                else
                    throw new IllegalArgumentException(
                                            "should never reach here");
            }
            if (b.op.RelationalOp( ) || b.op.BooleanOp( ))
                return (Type.BOOL);
        }
        if (e instanceof Unary) {
            Unary u = (Unary)e;
            if (u.op.NotOp( ))        return (Type.BOOL);
            else if (u.op.NegateOp( )) return typeOf(u.term,tm);
            else if (u.op.intOp( ))    return (Type.INT);
            else if (u.op.floatOp( )) return (Type.FLOAT);
            else if (u.op.charOp( ))  return (Type.CHAR);
            
        }
        throw new IllegalArgumentException("should never reach here");
    }

    // Implicit type conversions in expressions
    // As per the book's suggestion (p.198), only widening
    // conversions are allowed.
    // FLOAT + INT -> FLOAT + FLOAT
    // INT + FLOAT -> FLOAT + FLOAT
    // INT + CHAR -> INT + INT
    // CHAR + INT -> INT + INT
    // CHAR + CHAR -> INT + INT
    
    public static void V (Expression e, TypeMap tm) {
        if (e instanceof Value)
            return;
        if (e instanceof Variable) {
            Variable v = (Variable)e;
            check( tm.containsKey(v)
                   , "undeclared variable: " + v);
            return;
        }
        if (e instanceof Binary) {
            Binary b = (Binary) e;
            Type typ1 = typeOf(b.term1, tm);
            Type typ2 = typeOf(b.term2, tm);
            boolean chk;
            V (b.term1, tm);
            V (b.term2, tm);

            chk =
                typ1.equals(typ2)
                || ((typ1.equals(Type.FLOAT) && typ2.equals(Type.INT))
                     || (typ1.equals(Type.INT) 
                         && (typ2.equals(Type.CHAR) || typ2.equals(Type.FLOAT)))
                     || (typ1.equals(Type.CHAR) && typ2.equals(Type.INT)));

            if (b.op.ArithmeticOp() || b.op.RelationalOp()) 
                check(chk, "type error for " + b.op);
            else if (b.op.BooleanOp( ))
                check(typ1.equals(Type.BOOL) && typ2.equals(Type.BOOL),
                       b.op + ": non-bool operand");
            else
                throw new IllegalArgumentException("reached binary else");
            return;
        }
        if (e instanceof Unary) {
            Unary u = (Unary) e;
            Type t = typeOf(u.term, tm);
            V (u.term, tm);
            if (u.op.NotOp()) {
                check(t.equals(Type.BOOL), "type error for " + u.op);
            }
            else if (u.op.NegateOp()) {
                check(t.equals(Type.FLOAT) || t.equals(Type.INT),
                      "type error for " + u.op);
            }
            else if (u.op.floatOp()) {
                check(t.equals(Type.INT), "type error for " + u.op);
            }
            else if (u.op.charOp()) {
                check(t.equals(Type.INT), "type error for " + u.op);
            }
            else if (u.op.intOp()) {
                check(t.equals(Type.FLOAT) || t.equals(Type.CHAR),
                      "type error for " + u.op);
            }
            else throw new IllegalArgumentException("reached unary else");
            return;
        }
        throw new IllegalArgumentException("fell out bottom of V(expr)");
    }

    public static void V (Statement s, TypeMap tm) {
        if ( s == null )
            throw new IllegalArgumentException( "AST error: null statement");
        if (s instanceof Skip) return;
        if (s instanceof Assignment) {
            Assignment a = (Assignment)s;
            check( tm.containsKey(a.target)
                   , " undefined target in assignment: " + a.target);
            V(a.source, tm);
            Type targettype = typeOf(a.target, tm);
            Type srctype = typeOf(a.source, tm);
            if (!targettype.equals(srctype)) {
                if (targettype.equals(Type.FLOAT)) {
                    check(srctype.equals(Type.INT),
                    "1. mixed mode assignment to " + a.target);
                }
                else if (targettype.equals(Type.INT)) {
                    check(srctype.equals(Type.CHAR),
                    "2. mixed mode assignment to " + a.target);
                }
                else {
                    check( false
                        , "3. mixed mode assignment to\ntarget: "
                            + a.target + "\nsource: " + a.source);
                }
            }
            return;
        }
        if (s instanceof Conditional) {
            Conditional c = (Conditional) s;
            V(c.test, tm);
            check(typeOf(c.test, tm).equals(Type.BOOL),
                  "conditional test must return bool in " + c.test);
            V(c.thenbranch, tm);
            V(c.elsebranch, tm);
            return;
        }
        if (s instanceof Loop) {
            Loop l = (Loop) s;
            V(l.test, tm);
            check(typeOf(l.test, tm).equals(Type.BOOL),
                  "loop test must return bool in " + l.test);
            V(l.body, tm);
            return;
        }
        if (s instanceof Block) {
            Block b = (Block) s;
            if (b.members.size() == 0) return;
            for (int i = 0; i < b.members.size(); i++) {
                V(b.members.get(i), tm);
            }
            return;
        }
        throw new IllegalArgumentException("should never reach here");
    }

    public static void main(String args[]) {
        Parser parser  = new Parser(new Lexer(args[0]));
        Program prog = parser.program();
        // System.out.println(prog.display());
        System.out.println("\nBegin type checking...");
        System.out.println("Type map:");
        TypeMap map = typing(prog.decpart);
        System.out.println(map.display());
        V(prog);
        System.out.println("Type check successful");
    } //main

} // class StaticTypeCheck


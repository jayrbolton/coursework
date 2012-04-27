// TODO: 
//  * Implement implicit type conversions

import java.util.*;
import java.io.IOException;

public class TypeTransformer {

    public static Program T (Program p, TypeMap tm) {
        Block body = (Block)T(p.body, tm);
        return new Program(p.decpart, body);
    } 

    // Implicit type conversions in expressions
    // As per the book's suggestion (p.198), only widening 
    // conversions are allowed.
    // FLOAT + INT -> FLOAT + FLOAT
    // INT + FLOAT -> FLOAT + FLOAT
    // INT + CHAR -> INT + INT
    // CHAR + INT -> INT + INT
    // CHAR + CHAR -> INT + INT

    public static Expression T (Expression e, TypeMap tm) {
        if (e instanceof Value) 
            return e;
        if (e instanceof Variable) 
            return e;
        if (e instanceof Binary) {
            Binary b = (Binary)e; 
            Type typ1 = StaticTypeCheck.typeOf(b.term1, tm);
            Type typ2 = StaticTypeCheck.typeOf(b.term2, tm);
            Expression t1 = T(b.term1, tm);
            Expression t2 = T(b.term2, tm);
            if (typ1.equals(Type.INT)) {
                if (typ2.equals(Type.CHAR)) {
                    t2 = new Unary(new Operator(Operator.C2I), t2);
                    typ2 = Type.INT;
                    return new Binary(b.op.intMap(b.op.val), t1,t2);
                }
                else if (typ2.equals(Type.FLOAT)) {
                    t1 = new Unary(new Operator(Operator.I2F), t1);
                    typ1 = Type.FLOAT;
                    return new Binary(b.op.floatMap(b.op.val),t1,t2);
                }
                else if (typ2.equals(Type.INT)) {
                    return new Binary(b.op.intMap(b.op.val),t1,t2);
                }
                else {
                    throw new IllegalArgumentException(
                       "Invalid expression: " + typ1 + b.op + typ2);
                }
            }
            else if (typ1.equals(Type.FLOAT)) {
                if (typ2.equals(Type.INT)) {
                    t2 = new Unary(new Operator(Operator.I2F), t2);
                    typ2 = Type.FLOAT;
                    return new Binary(b.op.floatMap(b.op.val), t1,t2);
                }
                else if (typ2.equals(Type.FLOAT)) {
                    return new Binary(b.op.floatMap(b.op.val), t1,t2);
                }
                else {
                    throw new IllegalArgumentException(
                        "Invalid expression: " + typ1 + b.op + typ2);
                }
            }
            else if (typ1.equals(Type.CHAR)) {
                t1 = new Unary(new Operator(Operator.C2I),t1);
                typ1 = Type.INT;
                if (typ2.equals(Type.INT)) {
                    return new Binary(b.op.intMap(b.op.val),t1,t2);
                }
                else if (typ2.equals(Type.CHAR)) {
                    t2 = new Unary(new Operator(Operator.C2I),t2);
                    typ2 = Type.INT;
                    return new Binary(b.op.intMap(b.op.val), t1,t2);
                }
                else {
                    throw new IllegalArgumentException(
                        "Invalid expression: " + typ1 + b.op + typ2);
                }
            }
            else if (typ1.equals(Type.BOOL)) 
                return new Binary(b.op.boolMap(b.op.val), t1,t2);
            throw new IllegalArgumentException("should never reach here");
        }
        if (e instanceof Unary) {
            Unary u = (Unary) e;
            Type typ = StaticTypeCheck.typeOf(u.term, tm);
            Expression t = T (u.term, tm);
            if (typ.equals(Type.INT))
                return new Unary(u.op.intMap(u.op.val), t);
            else if (typ.equals(Type.FLOAT))
                return new Unary(u.op.floatMap(u.op.val), t);
            else if (typ.equals(Type.CHAR))
                return new Unary(u.op.charMap(u.op.val), t);
            else if (typ.equals(Type.BOOL))
                return new Unary(u.op.boolMap(u.op.val), t);
            throw new IllegalArgumentException("should not reach here");
        }
        throw new IllegalArgumentException("should never reach here");
    }

    public static Statement T (Statement s, TypeMap tm) {
        if (s instanceof Skip) return s;
        if (s instanceof Assignment) {
            Assignment a = (Assignment)s;
            Variable target = a.target;
            Expression src = T (a.source, tm);
            Type ttype = (Type)tm.get(a.target);
            Type srctype = StaticTypeCheck.typeOf(a.source, tm);
            if (ttype.equals(Type.FLOAT)) {
                if (srctype.equals(Type.INT)) {
                    src = new Unary(new Operator(Operator.I2F), src);
                    srctype = Type.FLOAT;
                }
            }
            else if (ttype.equals(Type.INT)) {
                if (srctype.equals(Type.CHAR)) {
                    src = new Unary(new Operator(Operator.C2I), src);
                    srctype = Type.INT;
                }
            }
            StaticTypeCheck.check( ttype.equals(srctype),
                      "bug in assignment to " + target);
            return new Assignment(target, src);
        } 
        if (s instanceof Conditional) {
            Conditional c = (Conditional)s;
            Expression test = T (c.test, tm);
            Statement tbr = T (c.thenbranch, tm);
            Statement ebr = T (c.elsebranch, tm);
            return new Conditional(test,  tbr, ebr);
        }
        if (s instanceof Loop) {
            Loop l = (Loop)s;
            Expression test = T(l.test, tm);
            Statement body = T(l.body, tm);
            return new Loop(test, body);
        }
        if (s instanceof Block) {
            Block b = (Block)s;
            Block out = new Block();
            for (Statement stmt : b.members)
                out.members.add(T(stmt, tm));
            return out;
        }
        throw new IllegalArgumentException("should never reach here");
    }
    

    public static void main(String args[]) {
        Parser parser = new Parser(new Lexer(args[0]));
        System.out.println("Begin parsing...");
        Program prog = parser.program();
        System.out.println("Parse success.");
        System.out.println("Begin type checking...");
        System.out.println("Type map:");
        TypeMap map = StaticTypeCheck.typing(prog.decpart);
        System.out.println(map.display());  
        StaticTypeCheck.V(prog);
        Program out = T(prog, map);
        System.out.println("Type check success.");
        String log = map.display() + "\n" + out.display();
        // Saves AST to a text file 
        try { 
           Format.saveTextFile(log, "log.txt"); 
        } 
        catch (IOException e) { 
           System.out.println("Unable to create file: "+e.getMessage(    )); 
        } 
        System.out.println("Abstract syntax tree and type map saved to log.txt");

    } //main

} // class TypeTransformer

    

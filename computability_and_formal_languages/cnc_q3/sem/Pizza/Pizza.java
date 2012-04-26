
// Parametric polymorphic Pair
class Pair<elem> {
    elem x; elem y;
    Pair (elem x, elem y) { this.x = x; this.y = y; }
    void swap () { elem t = x; x = y; y = t; }
}

// Subtype polymorphic Pair/Bounded polymorphism
class BPair {
    Object x; Object y;
    BPair (Object x, Object y) {this.x = x; this.y = y; }
    void swap () { Object t = x; x = y; y = t; }
}


// Parametric polymorphic ordering and equality type classes
interface Ord<A> {
    boolean less(A x);
}
interface Eq<A> {
    boolean eq(A x);
}

// Object wrapped integer with ord and eq 
class MyInt implements Ord<MyInt>, Eq<MyInt> {
    int i;
    MyInt (int i) { this.i = i; }
    int intValue() { return i; }
    public boolean less(MyInt i) { return this.i < i.intValue(); }
    public boolean eq(MyInt i) { return this.i == i.intValue(); }
}

// Doing <X implements Y<X>> is not allowed in Java, but <X extends Y<X>>
// is allowed, where Y can be either a class or an interface. This seems like a
// strange abuse where we're mixing interface hierarchy and class hierarchy?

// To have a generic variable extend from two interfaces or classes, we use '&'
// rather than commas. To have our class implement multiple interfaces, we use
// a comma. This is very confusing.

// Just like in my Haskell version, I wanted OPair itself to implement Ord and
// Eq, but I kept getting mysterious errors: 
/*
Pizza.java:49: less(A) in Ord<A> cannot be applied to (Ord) public boolean
less(OPair p) { return (x.less(p.fst()) || (x.eq(p.fst()) && y.less(p.snd())));
} ^ Pizza.java:49: eq(A) in Eq<A> cannot be applied to (Ord) public boolean
less(OPair p) { return (x.less(p.fst()) || (x.eq(p.fst()) && y.less(p.snd())));
} ^
*/

class OPair<A extends Ord<A>> implements Ord<OPair> {
    A x; A y;
    OPair (A x, A y) { this.x = x; this.y = y; }
    public A min() {if (x.less(y)) return x; else return y; }
    public A fst() { return x; }
    public A snd() { return y; }
//    public boolean eq(OPair p) { return (x.eq(p.fst()) && y.eq(p.snd())); }
    public boolean less(OPair p) { 
        return(x.less(p.fst()));
//     return (x.less(p.fst()) || (x.eq(p.fst()) && y.less(p.snd()))); 
    }
}

// Bounded polymorphism (AKA subtype polymorphism?).
// Looks prettier than above in Java syntax, but I argue its uglier semantically
interface BOrd {
    boolean bless(Object o);
}
// Bounded ordered pair
class BOPair {
    BOrd x; BOrd y;
    BOPair (BOrd x, BOrd y) {this.x = x; this.y = y; }
}
class BOInt implements BOrd {
    int i;
    BOInt (int i) { this.i = i; }
    int intValue() {return i;}
    public boolean bless(Object b) { return i < ((BOInt)b).intValue(); }
}

// Higher order functions 
// In Haskell, our type can be Int -> Bool
// In Java we translate this as method protytpe 'int applyID(boolean b)' where
// ID is some unique identifier. We have to create new method protypes for every
// higher order type we want.

// char -> boolean
interface Closure_char_bool {
    boolean apply_char_bool(char c);
}
class ClosureRadix implements Closure_char_bool {
    Radix receiver;
    int r;
    ClosureRadix (Radix receiver, int r) { 
        this.receiver = receiver; this.r = r; 
    }
    public boolean apply_char_bool (char c) {
        return receiver.applyRadix(r, c);
    }
}

class Radix {
    int n = 0;
    boolean applyRadix (int r, char c) {
        n++; return '0' <= c && c < '0' + r;
    }
    public Closure_char_bool radix(int r) {
        return new ClosureRadix(this, r);
    }
    String test() {
        Closure_char_bool f = radix(8);
        return f.apply_char_bool('0') + " " + f.apply_char_bool('9') + " " + n;
        // This would also allow us to pass f as a parameter to another method
        // And we could have a type signature from generic to generic
    }
}

// List using algebraic data type

class List {
    public enum Tag { Nil , Cons }
    Tag t;
    public List append(List ys) {
        switch(this.t) {
            case Nil:
                return ys;
            case Cons:
                char x = ((Cons)this).head;
                List xs = ((Cons)this).tail;
                return new Cons(x, xs.append(ys));
        }
        return ys; //should not reach here
    }
//    public List map (
}

class Nil extends List {
    Nil() {
        this.t = Tag.Nil;
    }
}

class Cons extends List {
    char head;
    List tail;
    Cons (char head, List tail) {
        this.t = Tag.Cons;
        this.head = head; this.tail = tail;
    }
}

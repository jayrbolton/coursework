global:Int;

fun : (x:Int, y:Int) -> Bool = global + y * x / z;
    where
    z : Int = 4;


Sigma = words U symbols
symbols = ops U meta
words = alphanumeric*

get char c
while c != end of file character
    if c elem of symbols
        string s += c
        while c elem symbols
            c.next
            s+= c
        c.next
        if s elem ops return new op(s)
        else if s elem meta return new meta(s)
    if c elem of alphanumeric
        string s += c
        while c elem of alphanumeric
            c.next
            s+=c
        c.next
        if s elem keywords return new keyword(s)
        else return new id(s)
    if c is a space
        c.next
end while

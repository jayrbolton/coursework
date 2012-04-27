// This test file consists of badly typed expressions -- each should return the
// proper error
int main () {
    int i1, i2, i3;
    float f1, f2, f3;
    char c1, c2, c3;
    bool b1, b2, b3;

    i1 := 1;
    f1 := 1.0;
    c1 := 'a';
    b1 := false;

//    i1 := i1 + b1;
//    i1 := 1 + f1;
//    f1 := f1 + c1;
//    c1 := c1 + f1;
    b1 := b1 + i1;
}

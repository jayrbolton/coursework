; J Bolton
; Wade Jessee

; Week 8
; Program 3 - Input int n from the command line, create an array of size
; n, and fill the array entries from 0 to n with the sums from 0 to n.
; Print the array. 

; class heirarchy
.class public Array2
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 5
  .limit locals 5

; retrieve first argument (n) from command line
  aload_0
  iconst_0
  aaload
  invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I

; store n into local 2 as a countdown
  dup
  istore_2

; create array of length n
  newarray int
  astore_1

  jsr FillArray
  return

; Count down from i to 0, filling each index i with (i(i+1)/2), and printing
; as we go along
FillArray:
  astore 3
FillLoop:
  ; decrease countdown
  iinc 2 -1

  aload_1 ; load array address for iastore below
  iload_2 ; load index
  iload_2 ; this is ii1+*2/ in postfix where i = index (or count)
  dup
  iconst_1
  iadd
  imul
  iconst_2
  idiv
  
  dup
  jsr PrintInt ; print our element
  
  iastore ; store into index

  iload_2
  ifgt FillLoop ; base case
  ret 3
; End FillArray

PrintInt:
  astore 4
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual	java/io/PrintStream/println(I)V
  ret 4

.end method

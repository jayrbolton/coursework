; J Bolton
; Wade Jessee

; Week 8
; Program 2 - Upgrade the array program of Fig 10.2 p206 of Juola so that
; it will take an int n from the command line, fill an array of size n
; with integer array indices from 0 to n-1, and then print out the
; contents of the array to the screen along with the sum of all the array
; entries. 

; class heirarchy
.class public Array
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

; retrieve first command line argument (n)
  aload_0 
  iconst_0
  aaload
  invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I

  dup
  istore_2 ; store n as a countdown for the loop below

  newarray int ; create an array of length n
  astore_1
  
  iconst_0 ; initialize a sum
  istore_3

; Count from n to 0, storing each count into its matching array index,
; summing and printing the counts as we go along
Loop:
  iinc 2 -1 ; decrease the countdown
  
  aload_1 ; load array address
  iload_2 ; load countdown onto stack as our value
  dup ; use countdown again as our index
  iastore ; store countdown into the array in its matching index

  iload_2 ; load countdown
  iload_3 ; load our sum
  iadd ; add it to the countdown
  istore_3 ; store sum
  
  iload_2
  jsr PrintInt ; print countdown

  iload_2 ; base case
  ifgt Loop
; End Loop


; print sum and return
  iload_3
  jsr PrintInt
  return

PrintInt:
  astore 4
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual	java/io/PrintStream/println(I)V
  ret 4

.end method

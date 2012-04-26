; J Bolton

; Week 9
; Program 1 - Write the program described in Juola Ch 10 programming
; exercise 6, a recursive Fibonacci calculator.

; class heirarchy
.class public Fibonacci
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial    java/lang/Object/<init>()V
  return
.end method

.method private static fib(I)I
  .limit stack 3
  ; equivalent java code: return(n<2)?n:fib(n-1)+fib(n-2)

  ; base case
  iload_0
  iconst_2
  if_icmplt Base

  ; fib(n-1)
  iload_0
  iconst_1
  isub
  invokestatic Fibonacci/fib(I)I

  ; fib(n-2)
  iload_0
  iconst_2
  isub
  invokestatic Fibonacci/fib(I)I

  ; fib(n-1) + fib(n-2)
  iadd
  ireturn

Base:
  iload_0
  ireturn
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 4

  ; retrieve first argument (n) from command line
  aload_0
  iconst_0
  aaload
  invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I

  ; apply fib to n
  invokestatic Fibonacci/fib(I)I

  ;print fib(n)
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual	java/io/PrintStream/println(I)V

  return
.end method

; J Bolton

; Week 7
; Program 3 - Write a Jasmin program to calculate the factorial of a number
; given on the command line. Print an error message if the number on the
; command line is less than 0.

; class heirarchy
.class public Factorial
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 4
  .limit locals 4

  ; push the string in args[0] on the stack
  aload_0         ;load args array address from local #0
  iconst_0        ;load arg array index 0
  aaload          ;load address of string from array of addresses

  ; call Integer.parseInt to convert the string on stack to an integer
  invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I

  dup
  dup
  
  iflt Invalid ; jump below loop if input < 0 
  
  istore_2 ; countdown
  istore_3 ; total
  
Base:
  iload_2
  iconst_1
  if_icmpeq Done ; if countdown == 1
  iload_2
  iconst_1
  isub
  istore_2 ; subtract 1 from countdown and store it
  iload_2
  iload_3
  imul
  istore_3 ; total * countdown, then store it
  goto Base
  
Done:
  iload_3 ; load total
  jsr PrintInt ; print total
  return
  
Invalid:
  ldc "Input must be greater than zero."
  jsr PrintString
  return

PrintInt:
  astore_1
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual	java/io/PrintStream/println(I)V
  ret 1
  
PrintString:
  astore_1
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual	java/io/PrintStream/println(Ljava/lang/String;)V
  ret 1


.end method


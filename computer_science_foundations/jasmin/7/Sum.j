; J Bolton

; Week 7
; Program 2 - Write a Jasmin program to input an integer n from the command
; line and print the sum of the integers from 1 to n, 1+2+3 + ... + n

; class heirarchy
.class public Sum
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
  
  istore_1 ; countdown
  istore_2 ; total
Base:
  iload_1
  iconst_1
  if_icmpeq Done ; if countdown < 1
  iload_1
  iconst_1
  isub
  istore_1
  iload_1
  iload_2
  iadd
  istore_2
  goto Base
  
Done:
  iload_2 ; load total
  jsr PrintInt ; print total
  
  return

PrintInt:
  astore_3
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual	java/io/PrintStream/println(I)V
  ret 3


.end method


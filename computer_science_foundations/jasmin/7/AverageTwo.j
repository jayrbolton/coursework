; J Bolton

; Week 7
; Program 1 - Modify your AverageTwo program so that it uses a Jasmin local
; subroutine (using the jsr instruction) to calculate the average of two 
; numbers and return the result to the main code to print.

; class heirarchy
.class public AverageTwo
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 4
  .limit locals 2

  ; push the string in args[0] on the stack
  aload_0         ;load args array address from local #0
  iconst_0        ;load arg array index 0
  aaload          ;load address of string from array of addresses

  ; call Integer.parseInt to convert the string on stack to an integer
  invokestatic java/lang/Float.parseFloat(Ljava/lang/String;)F

  ; push the string in args[1] on the stack
  aload_0         ;load args array address from local #0
  iconst_1        ;load arg array index 1
  aaload          ;load address of string from array of addresses

  ; call Integer.parseInt to convert the string on stack to an integer
  invokestatic java/lang/Float.parseFloat(Ljava/lang/String;)F

  jsr Average
  jsr PrintString
  return

Average:
  astore_1
  ;add them together and divide by two
  fadd
  fconst_2
  fdiv
  ret 1

PrintString:
  astore_1
  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  swap
  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(F)V
  ret 1

.end method


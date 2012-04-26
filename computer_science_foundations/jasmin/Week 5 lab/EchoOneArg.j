; EchoOneArg.j
; Neal Nelson  2008.03.28 
; Prints first command line argument to console

; class heirarchy
.class public EchoOneArg
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 3

  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;


  ; push the reference to the first command line argument onto the stack
  aload_0         ;load args array address from local #0
  iconst_0        ;arg array index (args[0])
  aaload          ;load address of string from array of addresses

  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(Ljava/lang/String;)V
  return
.end method


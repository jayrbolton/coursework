.class public print431
.super java/lang/Object

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3
	getstatic java/lang/System/out Ljava/io/PrintStream;
	bipush 25
	bipush 18
	iadd
	bipush 5
	iadd
	bipush 8
	iadd
	bipush 22
	iadd
	bipush 5
	idiv
	invokevirtual java/io/PrintStream/println(I)V
	return
.end method

.class public Syracuse
.super java/lang/Object

; boilerplate
.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V

	.limit stack 2
	.limit locals 3
	iconst_0
	istore_1
	bipush 81
	istore_2

	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 2
	invokevirtual java/io/PrintStream/println(I)V

LoopEntry:

	iload_2
	iconst_1
	if_icmpeq LoopExit
	
	iload_2
	iconst_2
	irem
	iconst_0
	if_icmpgt CaseOdd

; Case even:
	iload_2
	iconst_2
	idiv
	istore_2

	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 2
	invokevirtual java/io/PrintStream/println(I)V

	goto Exit

CaseOdd:

	iload_2
	iconst_3
	imul
	iconst_1
	iadd
	istore_2
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 2
	invokevirtual java/io/PrintStream/println(I)V

Exit:

	iinc 1 1
	goto LoopEntry

LoopExit:

	getstatic java/lang/System/out Ljava/io/PrintStream;
	ldc "Total number of steps: "
	invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 1
	invokevirtual java/io/PrintStream/println(I)V
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 2
	invokevirtual java/io/PrintStream/println(I)V

	return
.end method

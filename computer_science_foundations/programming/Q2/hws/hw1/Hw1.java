public class Hw1 {
	//Homework 1
	//J Bolton

	/*1.2.3
	(!(a && b) && (a || b) || ((a && b) || !(a || b)) 
	Using truth table results:

	a b  !(a && bb)
	0 0  1
	0 1  1
	1 0  1
	1 1  0
	
	a b  (a || b)
	0 0  0
	0 1  1
	1 0  1
	1 1  1
	
	a b  !(a && bb) && (a || b)
	0 0  0
	0 1  1
	1 0  1
	1 1  0
	
	a b  (a && b)
	0 0  0
	0 1  0
	1 0  0
	1 1  1
	
	a b  !(a || b)
	0 0  1
	0 1  0
	1 0  0
	1 1  0
	
	a b  (a && b) || !(a || b)
	0 0  1
	0 1  0
	1 0  0
	1 1  1
	
	a b  !(a && bb) && (a || b) || (a && b) || !(a || b)
	0 0  1
	0 1  1
	1 0  1
	1 1  1
	
	*/

	/*1.2.4
	Simplify:
	(!(a < b) && !(a > b))
	(a >= b) && (a <= b)
	a == b
	*/
	
	/*1.2.7
	a. "2bc" -- + is concat because of "bc"
	b. "5bc" -- first + is addition because the first evaluation is with ints
	c. "5bc" -- same as above
	d. "bc5" -- same, due to parens
	e. "bc23" -- + is concat because it's "bc" + 2, then "bc2" + 3
	
	*/
	
	//1.3.1
	/*
	public static void threeEqual(String[] args) {
		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		int c = Integer.parseInt(args[2]);
		
		if ((a == b) && (b == c)) System.out.println("Equal.");
		else System.out.println("Not equal.");
	}*/
	
	//1.3.2

	public static void quadratic(String[] args) {
		double a = Double.parseDouble(args[0]);
		double b = Double.parseDouble(args[1]);
		double c = Double.parseDouble(args[2]);
		double discriminant = b*b - 4.0*a*c;
		double div = 2.0*a;
		if (discriminant < 0) {
			System.out.println("discriminant is negative");
		}
		if (div == 0) {
			System.out.println("cannot divide by zero");
			return;
		}
		double d = Math.sqrt(discriminant);
		System.out.println((-b + d) / div);
		System.out.println((-b - d) / div);
	}
	
		public static void main(String[] args) {
		quadratic(args);
	}
	
	//1.3.3
	/*
	a. 'then' isn't allowed
	b. need parens around conditional
	c. nothing wrong
	d. need a semicolon after expression modifying c
	*/
	
}

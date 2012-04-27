// Jay Bolton

public class Midterm {

	//1.
	
	/*Haskell:
		a :: Int -> Int
		a 1 = 3
		a n = 2 * a(n-1) + 5
	*/
	
	//Recursive:
	public static int a(int n) {
		return (n <= 1)?3:2 * a(n-1) + 5;
	}

	//Iterative (see formula in function below.):
	//a2 :: Int -> Int
	public static int a2(int n) {
		int result = 8;
		while (n > 1) {
			result *= 2;
			n--;
		}
		return result-5;
	}

	//Or, using a magic formula...
	//a3 :: Int -> Int
	public static int a3(int n) {
		return (int) Math.pow(2, n+2) - 5;
	}

	//2.
	//Read info from user for our polynomial array and output the array:
	//Haskell type: readPoly :: IO() -> [Float] (???)
	public static double[] readPoly() {
	
		System.out.print("What is the degree of your polynomial? ");
		int degree = StdIn.readInt();
		System.out.println();

		double[] polynomial = new double[degree];
		System.out.println("Now enter all your coefficients: ");
		for (int i = 0; i < degree; i++) {
			System.out.print("x^" + i + " + ");
			polynomial[i] = StdIn.readDouble();
		}
		
		return polynomial;
		
	}
	
	//Print the polynomial (just for the heck of it):
	//Haskell type: printPoly :: [Float] -> IO()
	public static void printPoly(double[] polynomial) {
		int l = polynomial.length;
		System.out.println("Your polynomial looks like: ");
		for (int i = 0; i < (l-1); i++) {
			System.out.print(polynomial[i] + "x^" + (l-i) + " + ");
		}
		System.out.print(polynomial[l-1] + "\n");
	}
	
	//Evaluates the polynomial:
	//Haskell type: evaluatePoly :: [Float] -> IO()
	public static void evaluatePoly(double[] poly) {
		
		System.out.print("Enter your value for x: ");
		double x = StdIn.readDouble();
		System.out.println();
		
		int l = poly.length;
		double answer = 0;
		for (int i = 0; i < l; i++) {
			answer += poly[i] * Math.pow(x, l-i);
		}
		
		System.out.println("Your polynomial's computed value is: " + answer);
	}

	
	public static void main(String[] args) {
		
		System.out.println("Results of the function a(1, 2 .. 10)");
		for (int i = 1; i <= 10; i++) {
			System.out.println(a(i));
		}
		System.out.println("Results of the function a2(1, 2 .. 10)");
		for (int i = 1; i <= 10; i++) {
			System.out.println(a2(i));
		}		
		System.out.println("Results of the function a3(1, 2 .. 10)");
		for (int i = 1; i <= 10; i++) {
			System.out.println(a3(i));
		}
					
		System.out.println();
		//read polynomial from user and then print it:
		double[] poly = readPoly();
		printPoly(poly);
		//evaluate polynomial:
		evaluatePoly(poly);
		
	}
}

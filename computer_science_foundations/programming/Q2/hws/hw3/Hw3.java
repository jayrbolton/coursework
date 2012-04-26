//J Bolton

public class Hw3 {


	//2.1.1
	public static int max3(int a, int b, int c) {
		if (a>b && a>c) return a;
		else if (b>c) return b;
		else return c;
	}
	
	public static double max3(double a, double b, double c) {
		if (a>b && a>c) return a;
		else if (b>c) return b;
		else return c;
	}

	//2.1.2
	public static boolean odd(boolean a, boolean b, boolean c) {
		return ((a&&b&&c) || (a^b^c))?true:false;
	}
	
	//2.1.8
	public static double abs(double x) {
		return x<0?-(x):x;
	}
	
	public static double sqrt(double c) {
		if (c < 0) return Double.NaN;
		double err = 1e-15, t = c;
		while (abs(t - c/t) > err * t)
			t = (c/t + t) / 2.0;
		return t;
	}

	public static void callSqrt(String[] args) {
		int N = args.length;
		double[] a = new double[N];
		for (int i = 0; i < N; i++)
			a[i] = Double.parseDouble(args[i]);
		for (int i = 0; i < N; i++) {
			double x = sqrt(a[i]);
			System.out.println(x);
		}
	}

	//2.1.26
	public static int gcd(int a, int b) { return (b==0)?a:gcd(b, a%b); }
	public static int totient(int a) {
		int totient = 1;
		for (int i = 2; i < a; i++)
			if (gcd(a, i) == 1) totient++;
		return totient;
	}
	
	//2.2.7
	public static double[] scale(double ymin, double ymax) {
		//sample testing array:
		double[] a =
			{ 3.14159, 100.4, 32.3211, 213.32, 324.213, 9.33, 42.321, 99.9 };
		if (ymin>ymax) System.out.println("ymin must be < ymax");
		double min = StdStats.min(a), max = StdStats.max(a);
		double factor = (ymax-ymin)/(max-min);
		for (int i = 0; i < a.length; i++) {
			a[i] = ymin + a[i] * factor;
			System.out.println(a[i]);
		}
		return a;
	}
	
	//2.2.11
	public static class Matrix {
	
		public static double dot(double[] a, double[] b) {
			if (a.length != b.length) System.out.println("arrays must be ==");
			double product = 0;
			for (int i = 0; i < a.length; i++)
				product += a[i]*b[i];
			return product;
		}

		public static double[][] multiply(double[][] a, double[][] b) {
			int aheight = a.length;
			int bheight = b.length;
			int bwidth = b[0].length;
			double[][] c = new double[aheight][bwidth];
			for (int i = 0; i < aheight; i++) {
				for (int j = 0; j < bwidth; j++) {
					for (int k = 0; k < bheight; k++) {
						c[i][j] += a[i][k] * b[k][j];
					}
				}
			}
			return c;
		}
		
		public static double[][] transpose(double[][] a) {
			int N = a.length;
			for (int i = 0; i < N; i++) {
				for (int j = i+1; j < N; j++) {
					double temp = a[i][j];
					a[i][j] = a[j][i];
					a[j][i] = temp;
				}
			}
			return a;
		}
		
		public static double[] multiply(double[][] a, double[] x) {
			int N = a.length;
			int M = x.length;
			double[] b = new double[M];
			for (int i = 0; i < M; i++) {
				for (int j = 0; j < N; j++)
					b[i] += a[i][j]*x[j];
			}
			return b;
		}
		
		public static double[] multiply(double[] x, double[][] a) {
			int N = a.length;
			int M = x.length;
			double[] b = new double[M];
			for (int i = 0; i < N; i++) {
				for (int j = 0; j < M; j++)
					b[i] += x[j]*a[j][i];
			}
			return b;
		}
		
	}
	
	/*
	abc 12
	def 34
		56
	a1 + b3 + c5
	for height of abcdef
	for width of 123456
	for height of 123456
	*/

	public static void main(String[] args) {
		//2.1.1
		//int a = Integer.parseInt(args[0]);
		//int b = Integer.parseInt(args[1]);
		//int c = Integer.parseInt(args[2]);
		//System.out.println(max3(a, b, c));
		//2.1.2
		//boolean a = Boolean.parseBoolean(args[0]);
		//boolean b = Boolean.parseBoolean(args[1]);
		//boolean c = Boolean.parseBoolean(args[2]);
		//System.out.println(odd(a, b, c));
		//2.1.8
		//callSqrt(args);
		//2.1.26
		//System.out.println(totient(a));
		//2.2.7
		//double a = Double.parseDouble(args[0]);
		//double b = Double.parseDouble(args[1]);
		//scale(a, b);	
		//2.2.11
		double[] a = {1,2,3,4,5,6,7.7};
		double[] b = {8.4,2,3,1,5,2,6.6};
		System.out.println(Matrix.dot(a, b));
		double[][] c = {{1,1,1},{1,1,1},{1,1,1}};
		Matrix.multiply(c, c);
	}
}

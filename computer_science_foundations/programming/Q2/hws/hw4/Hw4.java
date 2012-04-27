//J Bolton

public class Hw4 {
	//2.3.6
	//the greatest common divisor of two greatest common divisors
	
	//2.3.8
	
	/* mystery(2, 25) = 50
	 * mystery(4, 12) + 2
	 * mystery(8, 6) + 2
	 * mystery(16, 3) + 2
	 * mystery(32, 1) + 16 + 2
	 * mystery(64, 0) + 32 + 16 + 2
	 * 0 + 2 + 2 + 2
	 */
	 
	/* mystery(3, 11) = 33
	 * mystery(6, 5) + 3
	 * mystery(12, 2) 
	 * mystery(24, 1) + 6 + 3
	 * mystery(48, 0) + 24 + 6 + 3
	 * 0 + 2
	 */
	 
	 //mystery is a multiplier
	 //replacing the +'s with *'s and making return 0 return 1, it'll compute powers
	 
	//2.3.10
	/* (domains are integers)
	 * T(N) = T(N/2) + 1
	 * T(N) = log₂N + 1
	 * 
	 * T(N) = 2T(N/2) + 1
	 * T(N) = 2(2^(log₂ N)) - 1
	 * or 2^(log₂N + 1) - 1
	 * 
	 * T(N) = 2T(N/2) +  N
	 * T(N) = 2^(log₂N + 1)+N( log₂ N - 1)
	 * 
	 * T(N) = 4T(N/2) +  N
	 * T(N) = 2( 4^(log₂ N-1)) + 1
	 */
	public static int recur(int N) {
		return (N==1)?1:(4 *  (recur(N/2))) + 3;
	}
	
	//2.3.12
	/* proof by induction:
	 * basis:
	 * F(2) = F(1) + F(0)
	 * F(2) = 1 + 0
	 * F(2) = 0
	 * F(2) computed F(1) once, and it is F₁
	 * induction:
	 * x = number of times F(1) is computes, and n is our place in the sequence
	 * prove: n = x → n+1 = x+1
	 * assumption: n = x
	 * add 1 to both sides
	 * n + 1 = x + 1
	 * (it can't be that simple. oh well)
	*/

	//2.4.1
	//we'll need gcd:
	public static int gcd(int a, int b) { return (b == 0)? a : gcd(b,a%b); }
	
	//generate a boolean matrix, testing if i and j are coprime
	public static boolean[][] isCoprime(int N) {
		boolean[][] matrix = new boolean[N][N];
		for (int i = 0; i < N; i++) {
			for (int j = 0; j < N; j++) {
				if (gcd(i, j) == 1) matrix[j][i] = true;
				else matrix[j][i] = false;
			}
		}
		return matrix;
	}

	//generate a boolean hadamard matrix
	public static boolean[][] hadamard(int N) {
		boolean[][] matrix = new boolean[N][N];
		matrix[0][0] = true;
		for (int n = 1; n < N; n += n) {
			for (int i = 0; i < n; i++) {
				for (int j = 0; j < n; j++) {
					matrix[i+n][j]   =  matrix[i][j];
					matrix[i][j+n]   =  matrix[i][j];
					matrix[i+n][j+n] = !matrix[i][j];
				}
			}
		}
		return matrix;
	}

	//print a matrix where the odd binomial coefficients are marked as true
	//this problem is very confusing
	//what does x represent?
	//what does k represent?
	//what does it mean by a coefficient in (1+x)^N?
	//is this applied to the hadamard matrix?
	//is it applied to pascal's triangle?

	//print the boolean matrix
	public static void printArray(boolean[][] M) {
		for (int i = 0; i < M.length; i++) {
			System.out.print("| ");
			for (int j = 0; j < M[0].length; j++) {
				System.out.printf("%-5s ", M[i][j]);
			}
			System.out.println(" |");
		}
	}
	
	//2.4.3
	/*
	 * flow(...0,0)
	 * 	  flow(...1,0)
	 * 			return (not open)
	 *    flow(...0,1)
	 * 			return (not open)
	 *    flow(...0,-1)
	 * 			return (out of bounds)
	 *    flow(...-1,0)
	 * 			return (out of bounds)
	 * flow(...0,1)
	 * 		return(not open)
	 * flow(...0,2)
	 * 		flow(...1,2)
	 * 			return (not open)
	 * 		flow(...0,3)
	 *			return (out of bounds)
	 * 		flow(...0,1)
	 * 			return(not open)
	 * 		flow(...-1,2)
	 *			return(out of bounds)
	 */

	//2.4.9
	//Add a recursive depth calculation to the book's percolate class
	static class Percolation {

		public static int max(int[] depths) {
			int max = 0;
			for (int i = 0; i < depths.length; i++) { 
				if(max < depths[i]) max = depths[i];
			}
			return max;
		}

		//a global variable for holding the maximum recursive depth
		 static int maxdepth;

	    // given an N-by-N matrix of open sites, return an N-by-N matrix
	    // of sites reachable from the top

	    public static boolean[][] flow(boolean[][] open) {
	        int N = open.length;
	        boolean[][] full = new boolean[N][N];
	        int[] depths = new int[N];
	        for (int j = 0; j < N; j++) {
	        	maxdepth = 0;
	        	flow(open, full, 0, j, 0);
	            depths[j] = maxdepth;
	        }
	        System.out.println("Max depth = " + max(depths));
	        for (int x = 0; x < depths.length; x++) {
	        	System.out.print(depths[x]);
	        }
	        System.out.println();
	        return full;
	    }

	    // determine set of full sites using depth first search
	    public static void flow
	    	(boolean[][] open, boolean[][] full, int i, int j, int depth) {

	        int N = open.length;

	        // base cases
	        if (i < 0 || i >= N) return; // invalid row
	        if (j < 0 || j >= N) return; // invalid column
	        if (!open[i][j]) return; // not an open site
	        if (full[i][j]) return; // already marked as full
	
	        // mark i-j as full
	        full[i][j] = true;

			if (depth > maxdepth) maxdepth = depth;

	        flow(open, full, i+1, j, depth + 1);   // down
	        flow(open, full, i, j+1, depth + 1);   // right
	        flow(open, full, i, j-1, depth + 1);   // left
	        flow(open, full, i-1, j, depth + 1);   // up
	    }

	
	    // does the system percolate?
	    public static boolean percolates(boolean[][] open) {
	        int N = open.length;
	        boolean[][] full = flow(open);
	        for (int j = 0; j < N; j++) {
	            if (full[N-1][j]) return true;
	        }
	        return false;
	    }

	    // test client
	    public static void main(String[] args) {
	        boolean[][] open = StdArrayIO.readBoolean2D();
	        StdArrayIO.print(open);
	        StdOut.println();

	        StdArrayIO.print(flow(open));
	        StdOut.println(percolates(open));
    	}


	
	}




	public static void main(String[] args) {
		//int a = Integer.parseInt(args[0]);
		//int b = Integer.parseInt(args[1]);
		//System.out.println(mystery(a, b));
		//System.out.println(recur(a));
		//printArray(isCoprime(a));
		//System.out.println();
		//printArray(hadamard(a));
		Percolation.main(args);
	}
}

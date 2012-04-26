//J Bolton

public class Hw2 {

    // 1.4.1
    /* The following will cause an array out of bounds exception --
     * the reason is that the array is 0-999 rather than 1-1000
     */
    public static int ex1_4_1() {
		int N = 1000;
		int[] a = new int[N];
		return a[1000];
    }

	// 1.4.4
	public static void reverse() {
		String[] a = { "Everybody", "Likes", "Pie" };
		String temp;
		int l = a.length;

		for (int i = 0, x = l-1; i < x; i++, x--) {
			temp = a[i];
			a[i] = a[x];
			a[x] = temp;
		}
		for (int i = 0; i < l; i++)
			System.out.println(a[i]);
	}
	
	/* 1.4.5
	 * missing 'new int[n]'
	 */
	 
	/* 1.4.8
	  * 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
	  */
	  
	// 1.4.12
	// to transpose a square array
	public static void transpose() {
		  //test array
		  int[][] array = {
			  {99, 85, 98},
			  {98, 57, 78},
			  {92, 77, 76},
		  };
		  /* output:
		   * 99, 98, 92
		   * 85, 57, 77
		   * 98, 78, 76
		   */
		  int temp, l = array.length;

		  for (int i = 0; i < l; i++) {
			  for (int j = 0; j < l; j++) {
				  temp = array [j][i];
				  array[j][i] = array[i][j];
				  array[i][j] = temp;
				  System.out.print(array[j][i] + " ");
			  }
			  System.out.println();
		  }
	  }

	//1.5.1
	public static void maxAndMin() {
		System.out.println("Enter a series of integers, separated by spaces or lines. When you are finished, hit ctrl-D");

		int max = StdIn.readInt(), min = max, n;
		while (!StdIn.isEmpty()) {
			n = StdIn.readInt();
			if (n > max) max = n;
			else if (n < min) min = n;
		}
		StdOut.println("Max: " + max + " Min: " + min);
	}
	
	//1.5.3 and 1.5.4
	public static void deviation(String[] args) {
		int N = Integer.parseInt(args[0]);
		double[] value = new double[N];
		double sum = 0;
		for (int i = 0; i < N; i++) {
			value[i] = StdIn.readDouble();
			sum += value[i];
		}
		double average = sum/N; sum = 0;
		for (int i = 0; i < value.length; i++) {
			sum += (value[i] - average)*(value[i] - average);
		}
		double deviation = Math.sqrt(sum/8);
		StdOut.println("Average: " + average);
		StdOut.println("Standard deviation: " + sum/N);
		StdOut.println("Values greater than 1.5 standard deviations from the mean:");
		double devtest = 1.5*deviation;
		for (int i = 0; i < value.length; i++) {
			if (value[i] > average) {
				if ((value[i]-devtest) > average)
					StdOut.println(value[i]);
			}
			else {
				if ((value[i]+devtest) < average)
					StdOut.println(value[i]);
			}
		}
	}
	
	//1.5.11
	public static void readText() {
		int sum = 0;
		while (!StdIn.isEmpty()) {
			StdIn.readString();
			sum++;
		}
		StdOut.println(sum);
	}

	public static void main(String[] args) {
		  //ex1_4_1();
		  //reverse();
		  //transpose();
		  //maxAndMin();
		  //deviation(args);
		  //readText();
	  }

}

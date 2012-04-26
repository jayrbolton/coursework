//J Bolton
//Exercises 3.2.31, 3.2.36

import java.awt.Color;
import java.lang.Character;

public class Hw5 {
    
    //3.1.5
    public static Picture xFlip(Picture pic) {
        int w = pic.width(), h = pic.height();
        Picture newpic = new Picture(w, h);
        
        for (int i = 0; i < w; i++)
            for (int j = 0; j < h; j++)
                newpic.set(i, j, pic.get(i, h-j-1));
                
        return newpic;
    }
    
    //3.1.9
    public static boolean isValidDNA(String s) {
        s.toUpperCase();
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) != 'A' && s.charAt(i) != 'C' && 
                s.charAt(i) != 'T' && s.charAt(i) != 'G')
                return false;
        }
        return true;
    }
    
    //3.1.11
    
    //watson-crick complement
    public static String complement(String s) {
        s.toUpperCase();
        String ts = "";
        for (int i = 0; i < s.length(); i++) {
            if(s.charAt(i) == 'A') ts += 'T';
            else if(s.charAt(i) == 'C') ts += 'G';
            else if(s.charAt(i) == 'T') ts += 'A';
            else if(s.charAt(i) == 'G') ts += 'C';
            else ts += '_';
        }
        return ts;
    }
    
    //reverse a string
    public static String reverse(String s) {
        String ts = "";
        for (int i = s.length()-1; i >= 0; i--) ts += s.charAt(i);
        return ts;
    }
    
    //test for palindrome
    public static boolean isPalindrome(String s) {
        s.toUpperCase();
        String ts = complement(reverse(s));
        if (ts.equals(s)) return true;
        return false;
    }
    
    //3.1.12
    public static boolean isValidISBN(String s) {
        int sum = 0;
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == '-');
            else {
                sum += (s.length()-1) * (s.charAt(i) - '0');
            }
        }
        return (sum % 11 == 0)?true:false;
    }
    
    //3.2.7
    public static class Rational {
        private int n, d; //numerator and denominator
        
        public Rational(int numerator, int denominator) {
            if (denominator == 0) 
                throw new RuntimeException("Denominator is zero");
            int gcd = gcd(numerator, denominator);
            n = numerator/gcd; d = denominator/gcd;
        }

        public Rational add(Rational b) {
            int tn = this.n * b.d + b.n * this.d;
            int td = this.d * b.d;
            return new Rational(tn, td);
        }

        public Rational subtract(Rational b) {
            int tn = this.n * b.d - b.n * this.d;
            int td = this.d * b.d;
            return new Rational(tn, td); 
        }        

        public Rational multiply(Rational b) {
            return new Rational(this.n * b.n, this.d * b.d);
        }

        public Rational divide(Rational b) {
            return new Rational(this.n * b.d, this.d * b.n);
        }

        public String toString() {
            return this.n + "/" + this.d;
        }
        
        private static int gcd(int m, int n) {
            return (n == 0)?m:gcd(n, m % n);
        }
            
        public static void main(String[] args) {
            //test client
            Rational x, y, z;
            System.out.print("Enter first numerator: ");
            int a = StdIn.readInt();
            System.out.print("Enter first denominator: ");
            int b = StdIn.readInt();
            x = new Rational (a, b);
            System.out.print("Enter second numerator: ");
            int c = StdIn.readInt();
            System.out.println("Enter a second denominator: ");
            int d = StdIn.readInt();
            y = new Rational (c, d);
            z = x.add(y);
            System.out.print(x.toString() + " + " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
            z = x.subtract(y);
            System.out.print(x.toString() + " - " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
            z = x.multiply(y);
            System.out.print(x.toString() + " * " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
            z = x.divide(y);
            System.out.print(x.toString() + " / " + y.toString());
            System.out.print(" = " + z.toString() + "\n");
        }
    } //end Rational class
    
    //3.2.31
    //note: in DJIA.txt, I replaced all commas with spaces
    public static class Entry {
        private String date;
        private float open, high, low, close, volume, adjclose;
        public Entry 
            (String d, float o, float h, float l, float c, float v, float a) {
            date = d; open = o; high = h; low = l; close = c; 
            volume = v; adjclose = a;
        }

        public String toString() {
            return this.date + ", " + this.open + ", " + this.high + ", "
            + this.low + ", " + this.close + ", " + this.volume + ", "
            + this.adjclose;
        }
        
        public static void main(String[] args) {
            Entry x = new Entry ("1", 2, 3, 4, 5, 6, 7);
            System.out.println(x.toString());
        }
    }
    public static class Table {
        private Entry[] table;
        private int lines = 19276;
        public Table (In in) {
            table = new Entry[lines];
            for (int i = 0; i < lines; i++) {
                String date = in.readString();
                float open = Float.parseFloat(in.readString());
                float high = Float.parseFloat(in.readString());
                float low = Float.parseFloat(in.readString());
                float close = Float.parseFloat(in.readString());
                float volume = Float.parseFloat(in.readString());
                float adjclose = Float.parseFloat(in.readString());
                table[i] = new Entry(date, open, high, low, close, volume,  adjclose);
            }
        }

        public static void main(String[] args) {
            In in = new In(args[0]);
            Table t = new Table(in);
        }
    }

    //See Entry.java and Table.java
    //I did not implement the averaging methods, as I think this homework assignment has been enough work as it is. To do it, I would parse the dates as Table reads them in, and store them as an int representing the days, where 1922 is 0. Then, I would have the user give a start and end date, parse those, and do a binary search on the Table to find the indices of those dates. I would then create a new array that consists of the subarray of Table with the user's date range and have some for loops that average out each field in the Entries, and then print them.

    public static void main(String[] args) {
//        Picture pic = new Picture(args[0]);
//        Picture newpic = xFlip(pic);
//        newpic.show();
//        System.out.println(isValidDNA(args[0]));
//        System.out.println(reverse(args[0]));
//        System.out.println(complement(args[0]));
//        System.out.println(isPalindrome(args[0])); // try ACTCATGAGT
//        System.out.println(isValidISBN(args[0])); // try 0-201-53082-1
//        Rational.main(args);
//        Entry.main(args);
        
    }
}

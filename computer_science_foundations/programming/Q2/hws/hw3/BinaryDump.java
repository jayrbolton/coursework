/*************************************************************************
 *  Compilation:  javac BinaryDump.java
 *  Execution:    java BinaryDump N < file
 *  Dependencies: BinaryStdIn.java
 *  
 *  Reads in a binary file and writes out the bits, N per line.
 *
 *  % java BinaryDump 16 < input.txt
 *
 *************************************************************************/

public class BinaryDump {

    public static void main(String[] args) {
        int BITS_PER_LINE = 16;
        if (args.length == 1) {
            BITS_PER_LINE = Integer.parseInt(args[0]);
        }

        int count;
        for (count = 0; !BinaryStdIn.isEmpty(); count++) {
            if (BITS_PER_LINE == 0) { BinaryStdIn.readBoolean(); continue; }
            else if (count != 0 && count % BITS_PER_LINE == 0) StdOut.println();
            if (BinaryStdIn.readBoolean()) StdOut.print(1);
            else                           StdOut.print(0);
        }
        StdOut.println();
        StdOut.println(count + " bits");
    }
}

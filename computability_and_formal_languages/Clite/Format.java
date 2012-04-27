import java.io.IOException;
import java.io.PrintWriter;
import java.io.FileWriter;
import java.io.File;

public class Format {
    // helper function to repeat tabs for abstract syntax tree display 
     // -- using StringBuilder is very fast  
     public static String repeat(String s, int n) { 
         final StringBuilder sb = new StringBuilder(); 
         for(int i = 0; i < n; i++) { 
             sb.append(s); 
         } 
         return sb.toString(); 
    }

    // Function to allow the AST to save to a file
    public static void 
        saveTextFile(String contents, String file) throws IOException {
            File f = new File(file);
            PrintWriter out = new PrintWriter(new FileWriter(f));
            out.print(contents);
            out.close();
        }
}

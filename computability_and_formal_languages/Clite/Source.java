import java.io.IOException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.nio.channels.FileChannel;
import java.nio.MappedByteBuffer;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.regex.Matcher;


/* 
    For the sake of simplicity, the Source is only a long String.  I see no
    discernable reason to use the BufferedReader API in my implementation of
    the lexer using regular expressions.
*/


public class Source {

    private String source;

    Source (String path) {
        try { source = readFile(path) + '\004'; }
        catch (IOException e) {
           System.exit(1);
        }
    }
    
    private static String readFile(String path) throws IOException {
        FileInputStream stream = new FileInputStream(new File(path));
        try {
            FileChannel fc = stream.getChannel();
            MappedByteBuffer bb = 
                fc.map(FileChannel.MapMode.READ_ONLY, 0, fc.size());
            // Instead of using default, pass in a decoder.
            return Charset.defaultCharset().decode(bb).toString();
        }
        finally {
            stream.close();
        }
    }

    // Match a regex for a lexeme against the source
    // See API for Pattern and Matcher
    public String matchRegex(String regex) {
        Pattern p = Pattern.compile(regex, Pattern.DOTALL);
        Matcher m = p.matcher(source);
        if (m.lookingAt()) return m.group();
        else return "";
    }

    public String matchKeyword(String keyword) {
        if (keyword.length() < source.length())
            if(keyword.equals(source.substring(0,keyword.length())))
                 return keyword;
        return "";
    }

    // Cut off n characters from the beginning of source
    // This is called when we have successfully matched a lexeme
    // It is also responsible for moving lineno and col
    public void truncate(int n) { 
        if (n < source.length())
            source = source.substring(n,source.length()); 
        else source = "";
    }

    //Accessors
    public String source() { return source; }
    public int length() { return source.length(); }

    public static void main(String[] argv) {
        Source s = new Source(argv[0]);
        System.out.println(s.source());
        String match = s.matchRegex("main");
        s.truncate(match.length());
        System.out.println(s.source());
    }
}

//note: in DJIA.txt, I replaced all commas with spaces
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

    public void printAverages() {
        System.out.println("Stock averages. \nEnter your start date (format: 1-Jan-99): ");
        String start = StdIn.readString();
        System.out.println("Enter end date: ");
        String end = StdIn.readString();
        System.out.println(binarySearch(start, this));
        System.out.println(binarySearch(end, this));
    }


    
    public static void main(String[] args) {
        In in = new In(args[0]);
        Table t = new Table(in);
    }
}

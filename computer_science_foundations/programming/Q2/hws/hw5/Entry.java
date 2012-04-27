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

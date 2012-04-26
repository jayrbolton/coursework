// J Bolton
// Final
// take home.

public class Final {

    //I'll do linked lists, since I did array doubling in class
    public static class List {
        private Node head;
        private boolean empty = true; 
        //keeping a last node should make append more efficient
        private Node last;
        
        private class Node {
            Object elem;
            Node next;
        }

        public List cons(Object obj) {
            Node tail = head;
            head = new Node();
            head.elem = obj;
            head.next = tail;
            if (empty) { last = head; empty = false; }
            return this;
        }

        public Object head() {
            return (empty)? null : head.elem;
        }

        public List tail() {
            if (!empty) head = head.next;
            return this;
        }

        public List append(List l) {
            if (empty && l.empty) return null;
            if (!empty && l.empty) return this;
            if (empty && !l.empty) {
                head = new Node(); last = new Node(); empty = false;
                head = l.head; last = l.last;
                return this;
            }
            last.next = l.head;
            return this;
        }

        //is there a better way to do this?
        public List reverse() {
            List newlist = new List();
            for (Node i = head; i != null; i = i.next) newlist.cons(i.elem);
            head = newlist.head; last = newlist.last;
            return this;
        }

        //Maybe this could be more efficient with a length field for List 
        //that's incremented on each cons?
        public int length() {
            if (empty) return 0;
            int l = 0;
            for (Node i = head; i != null; i = i.next, l++);
            return l;
        }

        public String toString() {
            if (empty) return "[]";
            String s = "[ ";
            for (Node i = head; i != null; i = i.next) s+= i.elem + ", ";
            s += "]";
            return s;
        }

        public static void main(String[] args) {
            //test client
            List l = new List();
            System.out.println("Enter a list of things, separated by spaces or linebreaks; press Ctrl-D when done:");
            while (!StdIn.isEmpty()) l.cons(StdIn.readString());
            System.out.println("\nYour list:");
            System.out.println(l.toString());
            System.out.println("Length:");
            System.out.println(l.length());
            System.out.println("Head:");
            System.out.println(l.head());
            System.out.println("Head removed:");
            System.out.println(l.tail().toString());
            System.out.println("Reversed:");
            System.out.println(l.reverse().toString());
            List second = new List();
            second.cons("acta"); second.cons("non"); second.cons("verba");
            System.out.println("Appended:");
            System.out.println(l.append(second).toString());
            System.out.println("Reversed again:");
            System.out.println(l.reverse().toString());
        }
    }

    public static void main(String[] args) {
        List.main(args);
    }
}



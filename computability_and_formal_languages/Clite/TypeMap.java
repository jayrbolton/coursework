import java.util.HashMap;
import java.util.ArrayList;

public class TypeMap {
    private HashMap<Variable, Type> map;

    TypeMap() { map = new HashMap<Variable, Type>(); }

    public void putDec(Declaration d) {
        Type t = d.type(); ArrayList<Variable> vs = d.vs();
        for (Variable v : vs) map.put(v,t);
    }

    public HashMap<Variable, Type> map() { return map; }

}

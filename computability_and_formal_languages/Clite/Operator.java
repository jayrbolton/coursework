public enum Operator {
    Equals, Less, LessEqual, Greater, GreaterEqual, Not,
    NotEqual, Plus, Minus, Multiply, Divide, And, Or, Int, Float;

    private Type type;

    public Type type() { return type; }
}

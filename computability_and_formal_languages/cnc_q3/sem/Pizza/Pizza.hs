
data MyPair a b = MyPair a b

-- I've added an equality class to make this more complete

class MyEq a where
    eq :: a -> a -> Bool

class (MyEq a) => MyOrd a where
    less :: a -> a -> Bool

data MyInt = MyInt Int

instance MyEq MyInt where
    eq (MyInt x) (MyInt y) = x == y

instance MyOrd MyInt where
    less (MyInt x) (MyInt y) = x < y

-- Ordered pair
data (MyOrd a, MyOrd b) => OPair a b = OPair a b

-- This is not in the paper, but is easily added:
instance (MyEq a, MyEq b) => MyEq (OPair a b) where
    eq (OPair x y) (OPair p q) = eq x p && eq y q

instance (MyOrd a, MyOrd b) => MyOrd (OPair a b) where
    less (OPair x y) (OPair p q) = less x p || ( eq x p && less y q)

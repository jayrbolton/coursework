-- J Bolton
-- Assignment 3, quarter 2

class Functor f => Pointed f where
  pure :: a -> f a

class Functor f => Applicative f where
  (<*>) :: f (a -> b) -> f a -> f b

data GTree a = Node a [GTree a]

instance Functor GTree where
  fmap g (Node x []) = Node (g x) []
  fmap g (Node x t) = Node (g x) (fmap (fmap g) t)

instance Applicative GTree where
  (Node f t1) <*> (Node x t2) = Node (f x) (zipWith (<*>) t1 t2)

-- Ran out of time on this one... Will return to work on it some more!

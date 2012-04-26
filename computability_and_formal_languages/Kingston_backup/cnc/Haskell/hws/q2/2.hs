- J Bolton
-- Assignment 2, quarter 2

class Functor f where
  fmap :: (a -> b) -> f a -> f b

class Functor f => Pointed f where
  pure :: a -> f a

class Functor f => Applicative f where
  (<*>) :: f (a -> b) -> f a -> f b

instance Functor ((->) r) where
  fmap g h = (\x -> g (h x))

instance Pointed ((->) r) where
  pure x = (\_ -> x)

instance Applicative ((->) r) where
  g <*> h = \x -> g x (h x)

{-
pure id <*> v = v

Left side:
pure id <*> v
 = \x -> pure id $ x (v x)
 = \x -> pure x $ (v x)
 = \x -> x (v x)

Right side:


-}

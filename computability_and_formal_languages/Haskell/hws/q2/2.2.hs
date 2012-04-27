-- J Bolton
-- Assignment 2, quarter 2

import Prelude hiding (Functor)
import Data.Monoid

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
Proof of the laws:
identity: 	pure id <*> u = u
Left side:
pure id <*> u
 = id <*> u
 = \x -> x (u x)
 = u -- not really sure about this...?

Right side:
u

composition: 	pure (.) <*> u <*> v <*> w = u <*> (v <*> w)
Left side:
pure (.) <*> u <*> v <*> w
 = \x -> (.) x (u x) <*> v <*> w
 = \x -> (.) x (u x (v x)) <*> w
 = \x -> (.) x (u x (v x (w x)))
 = \x -> x . (u x (v x (w x)))
 = \x -> u x (v x (w x))
 = u . v . w

Right side:
u <*> (v <*> w)
 = \x -> u x (v x) <*> w
 = \x -> u x (v x (w x))
 = u . v . w

homomorphism:
pure f <*> pure x = pure (f x)

Right side:
pure f <*> pure x
 = \y -> f y (x y)
 = f x

Left side:
pure (f x)
 = f x

interchange:
u <*> pure x = pure (\f -> f x) <*> u

Right side:
u <*> pure x
 = \y -> u y (x y)
 = u x

Left side:
pure (\f -> f x) <*> u
 = \y -> y x (u y)

Most of the above are almost definitely completely wrong. I need to wrap my head around what exactly happens in ap for this kind of functor. I will turn in what I have because of time constraints and continue to work on figuring it out.

-}

instance Functor Maybe where
  fmap g (Just x) = Just (g x)
  fmap g Nothing  = Nothing

instance Pointed Maybe where
  pure = Just

instance Applicative Maybe where
  (Just g) <*> (Just x) = Just (g x)
  _ <*> _               = Nothing

instance Functor (Either a) where
  fmap _ (Left x) = Left x
  fmap g (Right x) = Right (g x)

instance Pointed (Either a) where
  pure = Right

instance Applicative (Either a) where
  (Right g) <*> (Right x) = Right (g x)
  _ <*> (Left x) = Left x
  (Left x) <*> _ = Left x

instance Functor ((,) a) where
  fmap g (x,y) = (x, (g y))

data Exp = Var String | Val Int | Add Exp Exp 	deriving (Show)
data Env = Env [(String, Int)]			deriving (Show)

env = Env [("x", 1), ("y",2)]
expr = Add (Add (Var "x") (Var "y")) (Val 4) 

fetch :: String -> Env -> Maybe Int
fetch x (Env xs) = lookup x xs

{-
eval without the Applicative class, where eval returns (Env -> Maybe Int)

eval :: Exp -> Env -> Maybe Int
eval (Var x)   = fetch x
eval (Val x)   = k $ Just x
eval (Add x y) = (k $ maybePlus) `s` eval x `s` eval y
	where maybePlus (Just x) (Just y) = Just (x+y)
	      maybePlus _ _ = Nothing

k :: a -> b -> a
k x _ = x

s :: (a -> b -> c) -> (a -> b) -> (a -> c)
s ef es e = (ef e) (es e)
-}

-- eval with applicative class ((->) r), which I already defined above.

eitherFetch :: String -> Env -> Either String Int
eitherFetch x (Env xs) = elookup x xs
	where elookup x [] = Left ("Undefined variable: " ++ x)
	      elookup x ((y,z):ys)
		| x == y = Right z
		| otherwise = elookup x ys

eval :: Exp -> Env -> Either String Int
eval (Var x) = eitherFetch x
eval (Val x) = pure $ (Right x)
eval (Add x y) = pure eitherPlus <*> eval x <*> eval y
	where eitherPlus (Right x) (Right y) = Right (x+y)
	      eitherPlus (Left x) _ = Left x 
	      eitherPlus _ (Left x) = Left x 



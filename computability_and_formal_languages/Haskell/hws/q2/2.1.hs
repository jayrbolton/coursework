-- J Bolton -- Assignment 1

{- 1.
   map (f :: (a -> b)) 
   has type [a] -> [b]
-}

{- 2.
   $ is something of a plumbing operator, since it plumbs functions to parameters
   fold, map, zipWith, span, break, scan, any, all, and filter all take a single
   function as a parameter. I don't know if these would be consider 'plumbing
   functions' since they do not take two functions. And then of course there is
   <*> and >>=
-}

-- Plumbs 1-arity function onto a 2-arity function
(<.>) :: (c -> d) -> (a -> b -> c) -> a -> b -> d
f <.> g = \x y -> f (g x y)

{-
(show <.> (+)) 3 4 = "7"
-}

-- 3.

data GTree a = Node a [GTree a]    deriving (Show)


-- Test tree.

tree = Node 1 [(Node 2 []), (Node 3 [(Node 4 [])]), (Node 5 [(Node 6 [])])]

instance Functor GTree where
--fmap :: (a -> b) -> (GTree a) -> (GTree b)
  fmap g (Node x []) = Node (g x) []
  fmap g (Node x ts) = Node (g x) (fmap (fmap g) ts)

{-
*Main> tree
Node 1 [Node 2 [],Node 3 [Node 4 []],Node 5 [Node 6 []]]
*Main> fmap (+1) tree
Node 2 [Node 3 [],Node 4 [Node 5 []],Node 6 [Node 7 []]]

fmap id = id

Basis:
  fmap id (Node x [])
   = Node (id x) []
   = Node x []

Inductive hypothesis:
  Assume the proposition is true for all trees with <= n nodes.

Induction:
  fmap id (Node x ts)
   = Node (id x) (fmap (fmap id) ts)
   = Node x (fmap (fmap id) ts)   [def. of id]
   = Node x ts     [inductive hypothesis]

fmap (g . h) = fmap g . fmap h

Basis:
  fmap (g . h) (Node x [])
   = Node (g (h x)) []
  
  fmap g . fmap h $ (Node x [])
   = fmap g (fmap h (Node x []))
   = fmap g (Node (h x) []) = Node (g (h x)) []

Induct. Hypoth.:
  Assume the premise to be true for all trees with <= n nodes

Induction:
  Left side:
  fmap (g . h) (Node x ts)
   = Node ((g . h) x) (fmap (fmap (g . h)) ts)
   = Node (g (h x)) (fmap (fmap g (fmap h)) ts)    [induct hyp]
  
  Right side:
  fmap g . fmap h $ (Node x ts)
   = fmap g (fmap h (Node x ts))
   = fmap g (Node (h x) (fmap (fmap h) ts))
   = Node (g (h x)) (fmap (fmap g (fmap h)) ts)
-}



-- 4.

instance Functor (Either e) where
  fmap _ (Left l) = Left l
  fmap g (Right r) = Right (g r)

{-
fmap id = id
  fmap id (Left l) = Left l
  fmap id (Right r) = Right (id r) = Right r

fmap (g . h) = fmap g . fmap h

  fmap (g . h) (Left l) = Left l
  fmap g . fmap h $ Left l = Left l 

  fmap (g . h) (Right r)
   = Right ((g . h) r)
   = Right (g (h r))

  fmap g . fmap h $ (Right r)
   = fmap g (fmap h (Right r))
   = fmap g (Right (h r))
   = Right (g (h r))
-}


-- 5. 

class Functor f => Pointed f where
  pure :: a -> f a

instance Functor ((->) r) where
  fmap g h = (\x -> g (h x))

instance Pointed ((->) r) where
  pure x = (\_ -> x)

{-
I think the pointed law could be proven generally... it would always be true
provided it is working with a functor

fmap g . pure = pure . g

fmap g . pure $ x
 = fmap g (pure x)
 = fmap g (f x)
 = f (g x)

pure . g $ x
 = pure (g x)
 = f (g x)

-}

-- 6.

divideTen = fmap (maybediv (Just 10)) [(Just 1),(Just 2),(Just 0)]
    where maybediv (Just _) (Just 0) = Nothing
          maybediv (Just x) (Just y) = Just (x `div` y)

checkMaybe = Nothing `elem` divideTen

{-
Returning a Nothing does not stop computation. It can be handled by the
programmer to give the user some kind of real-time message or it could reroute
the program in such a way as to work around the error, making the program more
robust rather than just automatically exiting.
-}

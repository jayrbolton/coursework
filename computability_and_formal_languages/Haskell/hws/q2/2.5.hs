-- J Bolton
-- Assignment 5, quarter 2

{-
Assignment 5 - The Monad Laws

1. Now define a MonadJoin class that is based on Join rather than Bind (>>=)
2. Implement (>>=) Bind in terms of fmap and Join (TCOP p33)
3. Show how to derive a set of MonadJoin laws from the Monad laws
4. Implement the Fish (>=>) in terms of Bind (>>=) (TCOP p34)
5. Define a MonadFish class that is based on (>=>) Fish instead of (>>=) Bind.
6. Implement Bind in terms of MonadFish.
7. Show that the laws based on Fish and the laws based on Bind are equivalent (TCOP p35).
8. Identity Monad exercises - TBD
-}

--1.

class MonadJoin m where
    pure :: a -> m a
    join :: m (m a) -> m a

--Problems 2-6 gave me a lot of very satisfying aha! moments
--2.

newtype State s a = State { runState :: s -> (s, a) }

instance MonadJoin (State s) where
    pure a = State (\s -> (s, a))
    join a = State (\s -> let (s, st) = runState a s
                            in runState st s)

instance Functor (State s) where
    -- fmap :: (a -> b) -> f a -> f b
    fmap g s = State (\env -> let (env', a) = runState s env
                               in (env', g a))

-- (>>=) :: m a -> (a -> m b) -> m b
instance Monad (State s) where
    return a = State (\s -> (s,a))
    s >>= g = join $ fmap g s

--3.

join' s = s >>= id

--4.
-- (>=>) :: Monad m => (a -> m b) -> (b -> m c) -> a -> m c
-- First without bind (not very sure about this):
f `fish` g = (\a -> let (_, b) = runState f a
                     in g b)

f `fish'` g = \a -> (f a) >>= g

-- sweet!

--5.

class MonadFish m where
    (>=>) :: (a -> m b) -> (b -> m c) -> a -> m c

--6.

s `bind` f = (id >=> f) s

-- that was an amazing brain exercise.

--7.

{-
return a >>= k
= k a   [def. of >>=]

(return >=> k) a
= k a   [def. of >=>]

m >>= return
= m

(g >=> return) a
let (g a) = m
let (env,x) = unwrap m
in return x
= m

m >>= (\x -> k x >>= h)
= m >>= (k >=> h)

g >=> (h >=> k)
g >=> (\x -> h x >>= k)
(\y -> g y >>= (\x -> h x >>= k))

let g y = m
    h x = k

m >>= k >>= h

Couldn't get this one...
-}

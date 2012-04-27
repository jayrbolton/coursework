-- J Bolton
-- Assignment 4, Quarter 2

import Prelude hiding (Monad, (>>=))
import Data.Monoid

class Monad m where
    pure :: a -> m a
    (>>=) :: m a -> (a -> m b) -> m b
    (>>)   :: m a -> m b -> m b
    m >> n = m >>= \_ -> n

instance Monad Maybe where
    pure = Just
    (Just x) >>= g = g x
    (Nothing) >>= _ = Nothing

{-
Laws:
return a >>= k = k a
m >>= return    = m
m >>= (\x -> k x >>= h)  =  (m >>= k) >>= h
fmap f xs  =  xs >>= return . f  =  liftM f xs

Proof of the laws:

return a >>= k = k a

    Left side:
    return a >>= k
     = (Just a) >>= k   [def. return]
     = k a              [def. >>=]

    Right side:
    k a

m >>= return = m

    Left side:
    (Just m) >>= return
     = return m
     = Just m

    Nothing >>= return
     = Nothing

    Right side: 
    Just m
    or
    Nothing

m >>= (\x -> k x >>= h) = (m >>= k) >>= h

    Left side:
    (Just m) >>= (\x -> k x >>= h)
     = (\x -> k x >>= h) m      [def. >>=]
     = k m >>= h
     or
     Nothing >>= (\x -> k x >>= h)
      = Nothing     [def. >>=]
     
    Right side:
    ((Just m) >>= k) >>= h 
    k m >>= h                   [def. >>=]
    or
    (Nothing >>= k) >>= h
    Nothing >>= h
     = Nothing      [def. >>=]

fmap f xs  =  xs >>= return . f  =  liftM f xs
    
    Left expression:
     fmap f (Just x) 
     = Just (f x)       [def. fmap]
    or
     fmap f Nothing
     = Nothing

    Middle expression:
    (Just x) >>= return . f
    = (return . f) x    [def. >>=]
    = return (f x)      [def. composition]
    = Just (f x)        [def. return]
    or
    Nothing >>= return . f
    = Nothing           [def. >>=]

    Right expression:
    liftM f xs
    liftM f (Just x)
    = Just (f x)       [def. liftM]
    or
    liftM f Nothing
     = Nothing 
-}

-- 2.

instance Monad [] where
    pure x = [x]
    (x:xs) >>= g = g x
    [] >>= _ = []
    
-- 3.

instance Monad ((->) r) where
    pure x = (\_ -> x)
    x >>= g = \env -> g (x env) env


--4.

instance (Monoid w) =>  Monad ((,) w) where
    pure a          = (mempty, a)
    -- (>>=) :: m a -> (a -> m b) -> m b
    (w,a) >>= k     = let (w',b) = k a 
                      in (w `mappend` w', b)

--5.

type Env = [(String, Int)]
newtype State a = State { runState :: Env -> (Env, a) }

instance Monad State where
    pure x      = State (\s -> (s,x))
    -- (>>=) :: m a -> (a -> m b) -> m b
    x >>= y = State (\s -> let (env, a) = runState x s
                               b = y a
                           in runState b env)

{-
A more general version:

newtype State s a = State { runState :: s -> (s, a) }
instance Monad (State s) where
    etc.
-}

--6. 
-- Implement Join (TCOP p33) in terms of (>>=) Bind.
-- I'll do it for the State monad

-- join :: Maybe (Maybe a) -> Maybe a
join Nothing = Nothing
join (Just (Just x)) = Just x

-- join' :: State s (State s a) -> State s a
join' x = State (\s -> let (s, st) = runState x s
                        in runState st s)

--7.
-- I can't figure out what you're asking. What does "with assignment
-- statement from the previous assignment" mean?

data ExprAsn = Val Int
          | Var String
          | BinOp (Int -> Int -> Int) ExprAsn ExprAsn
          | Asn String ExprAsn

State eg <*> State ex = State (\env -> let (env1, g) = eg env
                                           (env2, v) = ex env1
                                        in (env2, g v))

-- Using previous assignments in an expression seems to work?
ex = BinOp (+) (BinOp (-) (Asn "z" (Val 3)) (Val 1)) (Var "z")
st = [("x", 3)] :: Env

-- fetch :: String -> Env -> Int
fetch x env = head [b | (a,b) <- env, x == a ]

-- store :: String -> Int -> Env -> Env
store var val env = (var, val) : env

-- fetch :: String -> State Int
fetchS var = State (\env -> (env, fetch var env) )

-- store :: String -> State Int -> State Int
storeS var (State s) = State ( \env -> let (env', val) = s env
                                       in (store var val env', val) )
-- eval :: ExprAsn -> State Int
eval (Val x)          = pure x
eval (Var v)          = fetchS v
eval (BinOp op e1 e2) = pure op <*> eval e1 <*> eval e2
eval (Asn v e)        = storeS v (eval e) 


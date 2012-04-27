-- Unification algorithm
-- J Bolton

module Robinson where

import Data.List (union)

data Expr = Val Int
          | Var String
          | Con Op
          | App Expr Expr
          | Abs String Expr
          deriving (Show, Eq)

data Op = Add | Sub | Mul | Div 
        deriving (Show, Eq)

data Type = I | B | List Type | Arrow Type Type | Tvar String 
          deriving (Show, Eq)

type Subst = [(String, Type)]

-- I decided to remove the possiblity for error. I think it makes sense that if
-- a unification is not possible, then it returns a nil substitution

unifyTS :: Type -> Type -> Subst
unifyTS (Tvar a) (Tvar b)
 | a == b = []
 | otherwise = [(a, (Tvar b))]
unifyTS (Tvar a) ts
 | occurs a ts = []
 | otherwise   = [(a, ts)]
unifyTS ts (Tvar a)
 | occurs a ts = []
 | otherwise   = [(a, ts)]
unifyTS (Arrow rs1 rs2) (Arrow ts1 ts2) = (unifyTS rs1 ts1) ++ (unifyTS rs2 ts2)
unifyTS (List ts1) (List ts2) = unifyTS ts1 ts2
unifyTS _ _ = []

occurs a (Tvar b) = a == b
occurs a I = False
occurs a B = False
occurs a (Arrow t1 t2) = (occurs a t1) && (occurs a t2)
occurs a (List t) = occurs a t



-- Again, I remove the possiblity for error. When there is no substitution,
-- then it simply returns the original type, which makes sense to me semantically,
-- though there may be some reason down the line that we don't want this behavior

applySubst :: Subst -> Type -> Type
applySubst s (Tvar a) = case lookup a s of
                          Nothing -> Tvar a
                          Just ts -> ts
applySubst s (Arrow t1 t2) = Arrow (applySubst s t1) (applySubst s t2)
applySubst s (List t) = List (applySubst s t)
applySubst s t = t

-- I rewrote the folloing type signature. The original blueprint would have
-- been much more unnecessarily complicated, I think
composeSubst :: Subst -> Subst -> Type -> Type
composeSubst s1 s2 = applySubst s1 . applySubst s2

-- Testing

ts1 = Tvar "a"
ts2 = Arrow (Tvar "d") (Tvar "e")
ts3 = Arrow (Tvar "a") (Arrow (Tvar "b") (Tvar "c"))
ts4 = List (Tvar "a")
ts5 = List ts2
ts6 = Tvar "b"
ts7 = Arrow (Tvar "a") (Tvar "b")

test1 = unifyTS ts1 ts2
test2 = unifyTS ts2 ts3
test3 = unifyTS ts1 ts1
test4 = unifyTS ts2 ts1
test5 = unifyTS ts4 ts5
test6 = unifyTS ts1 ts6
test7 = unifyTS ts6 ts1
test8 = unifyTS ts2 ts7

apply1 = applySubst test2 ts2

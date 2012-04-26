module Tutorial_notes where

data Bool : Set where
  true : Bool
  false : Bool

not : Bool -> Bool
not true = false
not false = true

data Nat : Set where
  zero : Nat
  suc : Nat -> Nat

_+_ : Nat -> Nat -> Nat
zero + m = m
suc n + m = suc (n + m) 

_*_ : Nat -> Nat -> Nat
zero * m = zero
suc n * m = n + (n * m)

_or_ : Bool -> Bool -> Bool
true or x = x
false or _ = false

if_then_else_ : {A : Set} -> Bool -> A -> A -> A
if true then x else _ = x
if false then _ else y = y

data List (A : Set) : Set where
  [] : List A
  _::_ : A -> List A -> List A

identity : (A : Set) -> A -> A
identity A x = x

-- That apply type signature is impenetrable

-- Haskell-like identity:

identity' : {A : Set} -> A -> A
identity' x = x

-- This contrasts with (A : Set) -> , where the type is an explicit arg
-- Very very interesting...



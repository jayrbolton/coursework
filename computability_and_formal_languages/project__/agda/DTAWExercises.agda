-- J Bolton

-- Exercises from:
-- 'Dependent Types at Work' by Ana Bove and Peter Dybjer

module DTAWExercises where

data Bool : Set where
  true : Bool
  false : Bool

¬ : Bool → Bool
¬ true = false
¬ false = true

≡ : Bool → Bool → Bool
≡ true true = true
≡ true false = false
≡ false true = false
≡ false false = true

_∨_ : Bool → Bool → Bool
true ∨ _    = true
_    ∨ true = true
_    ∨ _    = false

-- Exercise, p 5: Define conjunction and implication

_∧_ : Bool → Bool → Bool
true ∧ x = x
_    ∧ _ = false

if_then_else_ : {A : Set} → Bool → A → A → A
if true  then x else _ = x
if false then _ else y = y

-- This won't work in the type signature:
-- if _ then _ else _ 
-- Apparently agda is very sensitive about whitespace

data ℕ : Set where
  zero : ℕ
  succ : ℕ → ℕ

pred : ℕ → ℕ
pred zero = zero
pred (succ n) = n

_+_ : ℕ → ℕ → ℕ
zero + m = m
succ n + m = succ (n + m)

-- Agda requires whitespace between vals/funcs
-- This won't parse: n+m

_*_ : ℕ → ℕ → ℕ
zero * n = zero
succ n * m = (n * m) + m

-- Agda won't parse: n * m + m
-- maybe would with predecence declarations

-- Exercises, p 7: Define <

_-_ : ℕ → ℕ → ℕ
m - zero = m
n - succ m = pred (n - m)

_==_ : ℕ → ℕ → Bool
zero == zero = true
succ m == succ n = m == n
_ == _ = false

_<_ : ℕ → ℕ → Bool
x < y = if ¬ ((y - x) == zero) then true else false

-- Exercise, p 10: show that all previous functions can be defined in Godel System T

natrec : {C : Set} → C → (ℕ → C → C) → ℕ → C
natrec p h zero = p
natrec p h (succ n) = h n (natrec p h n)

plus : ℕ → ℕ → ℕ
plus n m = natrec m (λ x y → succ y) n

minus : ℕ → ℕ → ℕ 
minus n m = natrec n (λ x y → pred y) m

mult : ℕ -> ℕ -> ℕ
mult n m = natrec zero (λ x y → plus m y) n

eqzero_ : ℕ -> Bool
eqzero zero = true
eqzero _ = false

_eq_ : ℕ -> ℕ -> Bool
m eq n = if (eqzero (m - n) ∧ eqzero (n - m)) then true else false

_lt_ : ℕ -> ℕ -> Bool
m lt n = if ¬ (eqzero (n - m)) then true else false

-- Agda won't allow λx, but only λ x

data List (A : Set) : Set where
  [] : List A
  _∷_ : A → List A → List A

map : {A B : Set} → (A → B) → List A → List B
map f [] = []
map f (x ∷ xs) = f x ∷ map f xs

-- Exercise, p 11: define foldl, filter, and listrec

foldl : {A B : Set} → (B → A → B) → B → List A → B
foldl f z [] = z
foldl f z (x ∷ xs) = foldl f (f z x) xs

filter : {A : Set} → (A → Bool) → List A → List A
filter p ls = foldl (λ xs x → if p x then x ∷ xs else xs) [] ls

listrec : {A B : Set} → B → (A → B → B) → List A → B
listrec p h [] = p
listrec p h (x ∷ xs) = h x (listrec p h xs)

-- Wait a minute! listrec is just fold.

data _×_ (A B : Set) : Set where
  ⟨_,_⟩ : A → B → A × B


fst : {A B : Set} → A × B → A
fst ⟨ a , _ ⟩ = a

snd : {A B : Set} → A × B → B
snd ⟨ _ , b ⟩ = b

zip : {A B : Set} → List A → List B → List (A × B)
zip [] [] = []
zip (x ∷ xs) (y ∷ ys) = ⟨ x , y ⟩ ∷ zip xs ys
zip _ _ = []

-- Exercise, p 12: the sum type 

data _sum_ (A B : Set) : Set where
  inl : A → A sum B → A sum B
  inr : B → A sum B → A sum B

case : {A B C : Set} → A sum B → C
case (inl a s) = case s
case (inr a s) = case s
-- Well, the above type checks, but I have no idea
-- what it's supposed to do, and I doubt it works.

div : ℕ → ℕ → ℕ 
div m n = if (m < n) then zero else succ (div (m - n) n)

data Vec (A : Set) : ℕ → Set where
  [] : Vec A zero
  _∷_ : {n : ℕ} → A → Vec A n → Vec A (succ n)

zip' : {A B : Set}{n : ℕ} → Vec A n → Vec B n → Vec (A × B) n
zip' [] [] = []
zip' (x ∷ xs) (y ∷ ys) = ⟨ x , y ⟩ ∷ zip' xs ys

head : {A : Set}{n : ℕ} → Vec A (succ n) → A
head (x ∷ _) = x

tail : {A : Set}{n : ℕ} → Vec A (succ n) → Vec A n
tail (_ ∷ xs) = xs

data Fin : ℕ → Set where
  fzero : {n : ℕ} → Fin (succ n)
  fsucc : {n : ℕ} → Fin n → Fin (succ n)

_!_ : {A : Set}{n : ℕ} → Vec A n → Fin n → A
[] ! ()
(x ∷ xs) ! fzero = x
(x ∷ xs) ! fsucc i = xs ! i

-- Exercise, p 16: define ! again, but using succ in the signature

_‼_ : {A : Set}{n : ℕ} → Vec A (succ n) → Fin (succ n) → A
(x ∷ xs) ‼ fzero   = x
(x ∷ []) ‼ fsucc i = x
(x ∷ (y ∷ ys)) ‼ fsucc i = (y ∷ ys) ‼ i

data DBTree (A : Set) : ℕ → Set where
  dlf : A → DBTree A zero
  dnd : {n : ℕ} → DBTree A n → DBTree A n → DBTree A (succ n)

-- Exercise, p 17: define a binary tree type where the difference in the
-- heights of the left and right subtress is at most one

data DBTree' (A : Set) : ℕ → Set where
  dlf : A → DBTree' A zero
  dnd  :  {n : ℕ} → DBTree' A n → DBTree' A (succ n) → DBTree' A (succ (succ n))
  dnd' : {n : ℕ} → DBTree' A (succ n) → DBTree' A n → DBTree' A (succ (succ n))

-- This is probably not exactly what the author wanted, but I couldn't figure
-- out the question. The provided DBTree type is already balanced, so I assumed
-- he just wanted a different version that was also balanced, but where the
-- left and right subtree can be shorter or taller than the other by one.


-- (propositional equality)

data _=:=_ {A : Set} : A → A → Set where
  refl : (x : A) → x =:= x

data Image {A B : Set} (f : A → B) : B → Set where
  im : (x : A) → Image f (f x)

inv : {A B : Set} (f : A → B) → (y : B) → Image f y → A
inv f .(f x) (im x) = x

-- goals.

_++_ : {A : Set}{n m : ℕ} → Vec A n → Vec A m → Vec A (m + n)
[] ++ ys = {!ys!}
(x ∷ xs) ++ ys = {!x ∷ (xs ++ ys)!}

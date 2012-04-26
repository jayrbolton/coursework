#########################

	J Bolton
	Lab 3

#########################

-- Error Messages --

(a)
-Why: Division by zero
-Kind: run-time/program error
-Correction: 3/(2*6 - 11)

(b)
-Why: Numbers and bools conflicting
-Kind: (b)Type error
-Correction: 4 + 1

(c)
-Why: Numbers and chars conflicting
-Type: (b)Type error
-Correction: if 1 < 2 then 3 else 4

(d)
-Why: Numbers and booleans conflicting
-Type: (b)Type error
-Correction: if False then True else False

(e)
-Why: The number and bool is conflicting
-Type: (b)Type error
-Correction: max True False or max 3 1

(f)
-Why: Detecting the negative signs as operators
-Type: (d)Logical error?
-Correction: threeEqual (-3) (-3) (-3) 

(g)
-Why: the negative sign is being detected as an operator
-Type: (d)logical error?
-Correction: max (-3) 4

(h)
-Why: true is lowercase
-Type: (a) Syntax error
-Correction: if (3 < 4) then True else False

(i)
-Why: No error
-Type: None
-Correction: no error, but it is meaningless

-- Typing and Operator Precedence --

(a) not well-typed: succ (succ 3) = 5
(b) well-typed, 8
(c) well-typed, 4
(d) well-typed, 2
(e) not well-typed: 2 < 3 && not (3 > 6): true
(f) well-typed, True 
(g) not well-typed: succ ((+) 2 3) or succ (2+3) = 6
(h) not well-typed: (+) (succ 3) 2 == 5 = True

-- Hand Calculations --

1. exOr True True = (True || True) && not (True && False)
   exOr True True = True && False
   exOr True True = False 
2. exOr True x = not x
   exOr True True = not True
   exOr True True = False
3. max x y
   max (3-2) (3*8)
   max 1 24
     | 1 <= 24 = y
   max 1 24 = 24

-- Exercises --
3.6 The function checks to make sure that m!=n and n!=p
3.9 (2+3), 5, (div 11 2) = 5, 5, 5
    threeEqual 5 5 5 = (5 == 5 && 5 == 5)
    threeEqual 5 5 5 = True

    (2+4), 5, (div 11 2) = 6, 5, 5
    mystery 6 5 5 = (6==5 && 5 == 5)
    mystery 6 5 5 = False

    (2+4), 5, (div 11 2) = 6, 5, 5
    threeDifferent 6 5 5 = not (6 == 5 || 5 == 5 || 5 == 6)
    threeDifferent 6 5 5 = False

    fourEqual 5 5 5 10 = (5 == 5 && 5 == 5 && 5 == 10)
    fourEqual 5 5 5 10 = False

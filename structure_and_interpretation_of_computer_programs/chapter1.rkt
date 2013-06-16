; Jay Bolton
; SICP Chapter 1

#lang racket

; 1.1
; 11
; 9
; 3
; 10
; a
; b
; 19
; #f
; 4
; 16
; 6
; 16

; 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; 1.3

(define (square a) (* a a))

(define (sum-square-greater-two a b c) 
	(cond ((and (>= a c) (>= b c)) (+ (square a) (square b)))
	       ((and (>= a b) (>= c b)) (+ (square a) (square c)))
				 (else (+ (square b) (square c)))))

; 1.4
; If b is greater than zero, then we add a and b, else we subtract a and b.
; Cool.

; 1.5
; applicative:
; (test 0 (p))
; (if (= 0 0) 0 (p))
; 0
;
; normal:
; (test 0 (p))
; (test 0 (p))
; infinite loop trying to evaluate (p)

(define (sqrt-iter guess x)
	(if (is-good-enough guess x)
		guess
		(sqrt-iter (improve guess x)
		x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (is-good-enough guess x)
	(< (abs (- (square guess) x)) 0.001))

; 1.6

(define (new-if pred then-clause else-clause)
	(cond (pred then-clause) (else else-clause)))

(define (sqrt-iter-new-if guess x)
	(new-if (is-good-enough guess x)
		guess
		(sqrt-iter-new-if (improve guess x) x)))

(define (sqrt-iter-cond guess x)
	(cond ((is-good-enough guess x) guess)
	      (else (sqrt-iter-cond (improve guess x) x))))

; There is applicative-order evaluation of new-if, so the arguments to new-if
; are evaluated before new-if is evaluated, meaning we will always recurse
; sqrt-iter-new-if on every single call and ignore the condition.

; 1.7

(define (better-sqrt x) (better-sqrt-iter (/ x 2) 0 x))

(define (better-sqrt-iter current-guess prev-guess x)
	(cond ((is-more-good-enough current-guess prev-guess) current-guess)
	      (else (better-sqrt-iter (improve current-guess x) current-guess x))))

; Improve based on the change between iterations of guesses

(define (is-more-good-enough current-guess prev-guess)
	(< (abs (- current-guess prev-guess)) 0.0001))


; 1.8

(define (cube-root x)
	(define (is-close guess)
		(< (abs (- (* guess guess guess) x)) 0.0001))
	(define (improve guess)
		(/ (+ (/ x (square guess)) (* 2 guess)) 3))
	(define (root-iter guess)
		(cond ((is-close guess) guess)
		      (else (root-iter (improve guess)))))
	(root-iter 1.0))

; 1.9

(define (dec a) (- a 1))
(define (inc a) (+ a 1))

(define (plus_a a b)
	(if (= a 0)
		b
		(inc (plus_a (dec a) b))))

(define (plus_b a b)
	(if (= a 0)
		b
		(plus_b (dec a) (inc b))))

; (plus_a 4 5)
; (if (= 4 0) 5 (inc (plus_a (dec 4) 5)))
; (inc (plus_a 3 5))
; (inc (if (= 3 0) 5 (inc (plus_a (dec 3) 5))))
; (inc (inc (plus_a 2 5)))
; (inc (inc (if (= 2 0) 5 (inc (plus_a (dec 2) 5)))))
; (inc (inc (inc (plus_a 1 5))))
; (inc (inc (inc (if (= 1 0) 5 (inc (plus_a (dec 1) 5))))))
; (inc (inc (inc (inc (plus_a 0 5)))))
; (inc (inc (inc (inc (if (= 0 0) 5 (inc (plus_a (dec 0) 5)))))))
; (inc (inc (inc (inc (5)))))
; 9

; (plus_b 4 5)
; (if (= 4 0) 5 (plus_b (dec 4) (inc 5)))
; (plus_b 3 6)
; (if (= 3 0) 6 (plus_b (dec 3) (inc 6)))
; (plus_b 2 7)
; (if (= 2 0) 7 (plus_b (dec 2) (inc 7)))
; (plus_b 1 8)
; (if (= 1 0) 8 (plus_b (dec 1) (inc 8)))
; (plus_b 0 9)
; (if (= 0 0) 9 (plus_b (dec 0) (inc 9)))
; 9

; 1.10

(define (A x y)
	(cond ((= y 0) 0)
	      ((= x 0) (* 2 y))
				((= y 1) 2)
				(else (A (- x 1)
				         (A x (- y 1))))))

; What if evaluation was default, and newlines could scope like parens?
; An application operator (eg. $) might clean things up as well -- would get closed by the end-of-line.
; define A x y
; 	cond
; 		= y 0 $ 0
; 		= x 0 $ * 2 y
; 		= y 1 $ 2
; 		else  $ A (- x 1) (A x (- y 1))

; Possibly way more readable.

; Out of curiosity, the equivalent in Haskell:
; A x y
;  | y == 0 = 0
;  | x == 0 = 2 * y
;  | y == 1 = 2
;  | otherwise = A (x - 1) (A x (y - 1))

; I find that more declarative/readable, but the lisp is more minimally syntactically elegant.

; (A 1 10) = 1024
; (A 2 4) = 65536
; (A 3 3) = 65536

; f is 2n
; g is 2^n
; h is 2^(2^(2^(2^... (n times)


; Three kinds: linear recursive (expanding), linear iterative, and tree recursive.

; 1.11
; recursive

(define (f-recur n)
	(if (< n 3) n
		(+ (f-recur (- n 1)) (* 2 (f-recur (- n 2)))  (* 3 (f-recur (- n 3))))))

; iterative

(define (f-iter n)
	(if (< n 3) n (f-iter-sub 2 1 0 n)))

(define (f-iter-sub term0 term1 term2 n)
	(if (< n 3) term0
		(f-iter-sub (+ term0 (* 2 term1) (* 3 term2)) term0 term1 (dec n))))

; 1.12

; Return a list of the numbers within the nth row of pascal's triangle.
; I'll do an iterative version.

(define (triangle-row n)
	(define (make-triangle prev-row n)
		(if (= n 1) prev-row
			(make-triangle (next-row prev-row) (dec n))))
	;body
	(make-triangle '(1) n))

; Take a pascal triangle row and expand it to the next row

(define (next-row current)
	(define (sum-pairs ls)
		(if (= (length ls) 1) ls
			(cons (+ (first ls) (second ls)) (sum-pairs (rest ls)))))
	; body
	(append (list (first current)) (sum-pairs current)))

; 1.13

; Prove that (fib n) is the closest integer to (/ (expt phi n) (sqrt 5)) where phi is (+ 1 (sqrt 5)).

; Hint: Let psi = (/ (- 1 (sqrt 5)) 2). Use induction and the definition of the fibonacci numbers to prove that (= (fib n) (/ (- (expt phi n) (expt psi n)) (sqrt 5))

; let (a n) = (floor (/ (expt phi n) (sqrt 5)))
; let (b n) = (/ (- (expt phi n) (expt psi n)) (sqrt 5))

; Base case: show that (fib 1) = a

; (fib 1) = 1

; (a n) = (round (/ (expt phi 1) (sqrt 5)))
; = (round (/ phi 2.23606797749979))
; = (round (/ 1.618033988749895 2.23606797749979))
; = (round 0.7236067977499789)
; = (round 1)

; Base case with psi similarly.

; Induction:
; Assume: (fib n) = (b n)
; Prove: (fib (+ n 1)) = (b (+ n 1))

; (fib (+ n 1))
; = (+ (fib n) (fib (- n 1)))
; = (+ (b n) (fib (- n 1)))
; = (+ 
;     (/ (- (expt phi n) (expt psi n)) (sqrt 5))
;     (/ (- (expt phi (- n 1)) (expt psi (- n 1))) (sqrt 5))
; = (/ 
;     (+
;       (- (expt phi n) (expt psi n))
;       (- (expt phi (- n 1)) (expt psi (- n 1)))
;     (sqrt 5)))

; (b (+ n 1)) = (/ (- (expt phi (+ n 1)) (expt psi (+ n 1))) (sqrt 5))
; = (/ (- (expt phi (+ n 1)) (expt psi (+ n 1))) (sqrt 5))

; = (/ (- (expt phi (+ n 1)) (expt psi (+ n 1))) (sqrt 5))
; = (/ (- (expt phi (+ n 1)) (expt psi (+ n 1))) (sqrt 5))

#lang scheme
; Exercise 1.29, Simpson's Rule for approximated integrals
(define (cube x) (* x x x))

(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

; original integral approx formula given to us:
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
(integral cube 0 1 0.01)

; our new method for integral approximation based on Simpson's method:
(define (simpson f a b n)
  (define (inc x) (+ x 1))
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))
  (define (term k)
    (* (cond ((or (= k 0) (= k n)) 1)
          ((even? k) 2)
          (else 4))
       (y k)))
  (* (sum term 0 inc n)
     (/ h 3)))

(simpson cube 0 1 100.0)
(simpson cube 0 1 1000.0)
; Here, we are iterating on a var, k, incrementing it each time through. k's
; value determines the parameters we feed to our original function, f, each
; time around. 
; The trick here was to translate the math exactly as it looks! Funny.
 
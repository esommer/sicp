#lang scheme
;exploring cubed roots
(define (cube x) (* x x x))

(define (square y) (* y y))

(define (improve guess x)
  (/ (+ (/ x 
           (square guess)) 
        (* 2 guess)) 
     3))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.01))

(define (cubert-iter guess x)
  (if (good-enough? guess x)
          guess
          (cubert-iter (improve guess x)
                     x)))

(define (cubert x)
  (cubert-iter 1.0 x))

(cubert 27)
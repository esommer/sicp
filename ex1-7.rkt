#lang scheme
(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(display "On a calculator, the sq rt of .00002 = 0.00447213595; Via our calculator, it is: ")
(sqrt .00002)

(display "On a calculator, the sq rt of 2000000 = 1414.21356237; Via our calculator, it is: ")
(sqrt 2000000)

(display "On a calculator, the sq rt of 8000000000 = 89442.7191; Via our calculator, it is: ")
(sqrt 8000000000)
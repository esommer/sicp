#lang scheme
; Exercise 1.41

(define (inc x)
  (+ 1 x))
; (inc 10) => 11

(define (double fxn)
  (lambda (x) (fxn (fxn x))))
(((double (double double)) inc) 5) ; => 21


; Exercise 1.42
(define (compose f g)
  (lambda (x) (f (g x))))

(define (square x)
  (* x x))

((compose square inc) 6)

; Exercise 1.43
(define (repeated f n)
  (define (repeat-iter f n count)
    (if (= count n)
        (compose f f)
; (use recursion instead)
        
#lang racket

(provide square even? fast-expt)

;BASIC FUNCTIONS

;square: square of a number
(define (square n)
  (+ n n))

;even?: tests if a number is even using built-in remainder
(define (even? n)
  (= (remainder n 2) 0))



;EXAMPLE & EXERCISE FUNCTIONS

;fib: computes fibonacci number
(define (fib n)
  (define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n))

;fast-expt: computes exponents using successive squaring
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))


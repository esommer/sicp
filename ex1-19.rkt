#lang scheme
; Exercise 1.19: Logarithmic Fibonacci

; even?:
(define (even? a)
  (= (remainder a 2) 0))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count) 
         (display "running again: a: ") (display a) (display " b: ") (display b) (display " p: ") (display p) (display " q: ") (display q) (display " count: ") (display count) (display "\n")
         (fib-iter a
                   b
                   (+ (* q q) (* 2 p q) (* p p))
                   (+ (* q q) (* 2 p q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
(define (fib n)
  (fib-iter 1 0 0 1 n))
(fib 8)
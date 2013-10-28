#lang scheme
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (cond ((not (> (abs angle) 0.1)) angle)
        (else (display "going again\n") (p (sine (/ angle 3.0))))))
(sine 12.15)
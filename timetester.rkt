#lang scheme
(define (square x) (* x x ))

(define (program-tester program-name n)
  (define start (current-inexact-milliseconds))
  (if (not (= 0 (program-name n)))
      (- (current-inexact-milliseconds) start)
      0))

(define (avg-times program-name n run-times count val)
  (cond ((= run-times count) (/ val run-times))
      ((avg-times program-name n run-times (+ 1 count) (+ (program-tester program-name n) val)))))


(avg-times square 100000 10000 0 0)

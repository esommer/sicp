#lang scheme
(define (square x) (* x x ))

(define (program-tester program-name n)
  (define start (current-inexact-milliseconds))
  (program-name n)
  (- (current-inexact-milliseconds) start)
  )

(define (avg-times program-name n run-times count val)
  (cond ((= run-times count) (/ val run-times))
      ((avg-times program-name n run-times (+ 1 count) (+ (program-tester program-name n) val)))))



;(program-tester square 20)
(avg-times square 20 10 0 0)

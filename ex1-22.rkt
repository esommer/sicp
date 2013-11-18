#lang planet neil/sicp
;(define (time-analyzer fxn var1 var2 starttime runtimes)
;  (cond ((= runtimes 0) (display "avg time: ") (- (runtime) starttime))
;        (else 

         
;(define (fxn-runner fxn var1 var2 count countedtime)
;  ((= count 0) (fxn-runner

(define (timed-prime-test n a)
  (search-for-primes n a (runtime)))

;(define (start-prime-test n start-time)
;  (cond (prime? n)
;      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display "time: ")
  (display elapsed-time))

(define (even? n)
  (= (remainder n 2) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)
  (* x x))


(define (search-for-primes n a start-time)
; n is number of primes you want, a is starting point
  (cond ((= n 0) (report-prime (- (runtime) start-time)))
      ((prime? a) (display a) (display "\n") (search-for-primes (- n 1) (+ a 1) start-time))
      (else (search-for-primes n (+ a 1) start-time))))
;(search-for-primes 3 1000)

 




(timed-prime-test 3 1000)
(display "   = 1000")
(newline)
(timed-prime-test 3 10000)
(display "   = 10000")
(newline)
(timed-prime-test 3 100000)
(display "   = 100000")
(newline)
(timed-prime-test 3 1000000)
(display "   = 1000000")
(newline)


(define (prime-search n a)
; n is number of primes you want, a is starting point
  (cond ((= n 1) (display a) (display "\n"))
      ((prime? a) (display a) (display "\n") (prime-search (- n 1) (+ a 1)))
      (else (prime-search n (+ a 1)))))         
         
         
(define (fxn-timer fxn var1 var2 starttime)
  (display starttime)
  (fxn var1 var2)
  (display (runtime))
  (newline)
  (- (runtime) starttime))


;(fxn-timer prime-search 3 1000 (runtime))
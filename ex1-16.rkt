#lang scheme
; EXPONENTIATION

; normal recursive exponent:
(define (expt-r b n)
  (if (= n 0)
      1
      (* b (expt-r b (- n 1)))))
; (linear recursive with O(n) steps & O(n) space)

; iterative exponent:
(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))
(define (expt-i b n)
  (expt-iter b n 1))
; (linear iterative process with O(n) steps & O(1) space)

; successive squaring:
(define (even? n)
  (= (remainder n 2) 0))
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
; (linear(?) recursive with O(log n) space and steps)

; iterative successive squaring:
; (relies on "even?")
(define (square n)
  (* n n))
(define (fast-expt-iter b n a)
  ; n is counter, a is product
  (display "b: ") (display b) (display " n: ") (display n) (display " a: ") (display a) (display " ab^n: ")  (display (* a (expt b n))) (display "\n")
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter (square b) (/ n 2) a))
        (else (fast-expt-iter b (- n 1) (* b a)))))
(define (fast-expt-i b n)
  (fast-expt-iter b n 1))
; ignoring my display code, this should grow at a rate of O(log n) in both space and steps
(fast-expt-i 3 6)


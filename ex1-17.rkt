#lang scheme
; Exercise 1.18, defining multiplication with a recursive successive addition process

; first up: multiplication by recursive successive addition
(define (*-r a b)
  (cond ((= b 0) 0)
        (else (display "a: ") (display a) (display " b: ") (display b) (display "\n")
        (+ a (*-r a (- b 1))))))
; grows at O(n) in both space and steps
; test: 
; (* 2 3)

; even?:
(define (even? n)
  (= (remainder n 2) 0))

; double:
(define (double a)
  (* a 2))

; halve:
(define (halve a)
  (/ a 2))

; multiplication by iterative successive addition:
(define (*-rec a b)
  (cond ((= b 0) 0)
        ((even? b) (double (*-rec a (/ b 2))))
        (else (+ a (*-rec a (- b 1))))))
; this should grow in steps as O(log n) and in space as O(log n)
; test:
(*-rec 3 6)
#lang scheme
; Exercise 2.2
(define (make-point x-point y-point)
  (cons x-point y-point))

(define (get-x point)
  (car point))

(define (get-y point)
  (cdr point))

(define (get-start segment)
  (car segment))

(define (get-end segment)
  (cdr segment))

(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (avg a b)
  (/ (+ a b) 2))

(define (square x)
  (

(define (length seg)
  (

(define (midpoint-segment segment)
  (make-point (avg (get-x (get-start segment)) (get-x (get-end segment)))
              (avg (get-y (get-start segment)) (get-y (get-end segment)))))
(midpoint-segment (make-segment (make-point -1 -4) (make-point -6 -8)))

; Exercise 2.3
; Perimeter of a rectangle:
(define (make-rect width-seg height-seg)
  (cons (width-seg height-seg)))



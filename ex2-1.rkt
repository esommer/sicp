#lang planet neil/sicp
(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (< d 0)
        (cons (/ (* -1 n) g) (/ (* -1 d) g))
    (cons (/ n g) (/ d g)))))

(make-rat -8 -4)

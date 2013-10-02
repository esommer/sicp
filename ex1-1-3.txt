# PROBLEM: Define a procedure that takes 3 numbers as arguments and returns the sum of the squares of the 2 larger numbers.
(define (lss x y z)
    (cond ((and (< x y) (< x z)) (+ (* y y) (* z z)))
          ((and (< y x) (< y z)) (+ (* x x) (* z z)))
          (else (+ (* x x) (* y y)))
       )
    )
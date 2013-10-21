#lang scheme
;SICP Exercise 1.11 f(n) = n if n < 3, else f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)

; RECURSIVE SOLUTION
(define (f_of_n n)
  (cond ((< n 3) n)
        (else (display "adding: (n - 1): ") (display (- n 1)) (display " + 2(n - 2): ") (display (* 2 (- n 2))) (display " + 3(n - 3): ") (display (* 3 (- n 3))) (display "\n")
         (+ (f_of_n (- n 1)) (* 2 (f_of_n (- n 2))) (* 3 (f_of_n (- n 3)))))))
(f_of_n 1)
(f_of_n 2)
(f_of_n 3)
(f_of_n 4)
(f_of_n 5)
(display "\n\n\n")

; ITERATIVE SOLUTION
(define (f_of_n_i n)
  (define (f_of_n_iter a b c count n)
    (cond ((< n 3) n)
          ((= count n) (+ a (* 2 b) (* 3 c)))
          (else (f_of_n_iter (+ a (* 2 b) (* 3 c)) a b (+ count 1) n))
    )
  )
  (f_of_n_iter 2 1 0 3 n)
)
(f_of_n_i 4)
(f_of_n_i 5)
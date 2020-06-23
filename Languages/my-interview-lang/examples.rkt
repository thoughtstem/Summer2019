#lang racket
(require ts-kata-util)

(define-example-code racket 001-sum-up-list-of-numbers-recursion
   (define (sum l)
     (if (empty? l)
       0
       (+ (first l) 
          (sum (rest l)))))

   (sum '(1 2 3)))

(define-example-code racket 002-sum-up-list-of-numbers-foldl
   (define (sum l)
     (foldl + 0 l))

   (sum '(1 2 3)))

(define-example-code racket 003-sum-up-list-of-numbers-apply
   (define (sum l)
     (apply + l))

   (sum '(1 2 3)))

(define-example-code racket 004-max-value-in-list
   (+ 2 2)
   ;max = reduce(lambda a,b: a if (a > b) else b, list)  -> python code for this problem
   )
  
(define-example-code racket lists~max-001
  (+ 2 2))

(define-example-code racket lists~product-001
  (+ 2 2))

(define-example-code racket lists~average-001
  (+2 2))

(define-example-code racket numbers-001
  (+ 2 2))

(define-example-code racket numbers-002
  (+ 2 2))


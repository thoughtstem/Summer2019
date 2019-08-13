#lang racket
(require ts-kata-util)

(define-example-code racket 001-sum-up-list-of-numbers-recursion
   (define (sum l)
     (if (empty? l)
       0
       (+ (first l) 
          (sum (rest l)))))
   
   (sum '())
   (sum '(1 2 3)))

(define-example-code racket 002-sum-up-list-of-numbers-foldl
   (define (sum l)
     (foldl + 0 l))
   
   (sum '())
   (sum '(1 2 3)))

(define-example-code racket 003-sum-up-list-of-numbers-apply
   (define (sum l)
     (apply + l))
   
   (sum '())
   (sum '(1 2 3)))

(define-example-code racket 004-max-value-in-list
   (+ 2 2)
   ;max = reduce(lambda a,b: a if (a > b) else b, list)  -> python code for this problem
   )
  

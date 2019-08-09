#lang racket
(require ts-kata-util)

(define-example-code racket 001-sum-up-list-of-numbers
   (define (sum l)
     (if (empty? l)
       0
       (+ (first l) 
          (sum (rest l)))))
   
   (sum '())
   (sum '(1 2 3)))

(define-example-code racket 002-sum-up-list-of-numbers
   (define (sum l)
     (foldl + 0 l))
   
   (sum '())
   (sum '(1 2 3)))

(define-example-code racket 003-sum-up-list-of-numbers
   (define (sum l)
     (apply + l))
   
   (sum '())
   (sum '(1 2 3)))

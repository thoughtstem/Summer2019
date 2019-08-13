#lang racket
(require ts-kata-util)

(define-example-code racket lists~sum-001
   (define (sum l)
     (if (empty? l)
       0
       (+ (first l) 
          (sum (rest l)))))

   (sum '(1 2 3)))

(define-example-code racket lists~sum-002
   (define (sum l)
     (foldl + 0 l))

   (sum '(1 2 3)))

(define-example-code racket lists~sum-003
   (define (sum l)
     (apply + l))

   (sum '(1 2 3)))

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






#lang racket

(define lower 1)

(define upper 100)
lower
upper
;guess picks the middle value of the two bounds, starting at 1 and 100 shown above
(define (guess)
  (quotient (+ upper lower) 2))
(guess)
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

(define (yes)
  (print"you win!"))


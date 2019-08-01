#lang racket

(define lower 1)

(define upper 100)

;(guess) picks the middle value of the two bounds, starting at 1 and 100 shown above
(define (guess)
  (quotient (+ upper lower) 2))


;user will call one of these to give the cpu a hint.
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

;user calls this when the cpu guesses the correct number
(define (yes)
  (print "You win!"))

(define (main m n)
  (set! lower (min m n))
  (set! upper (max m n))
  (displayln "(smaller): Call when guess is too high.\n ")
  (displayln "(bigger): Call when guess is too low.\n ")
  (displayln "(yes): Call when guess is correct.\n ")
  (guess))

(main lower upper)
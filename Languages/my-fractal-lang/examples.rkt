#lang racket

(require 2htdp/image)
(require ts-kata-util)

;Add fractals katas in this file. Format:
; (define-example-code Summer2019/Languages/my-fractal-lang/main identifier
;			[YOUR CODE])

;Fractals Kata Examples: Still Images with Shapes

;Easy: Fractal using circles that decrease in size

(define-example-code Summer2019/Languages/my-fractal-lang/main 001-medium
;Sierpinski carpet fractal
(define (sierpinski-carpet n)
    (cond
      [(zero? n) (square 1 "solid" "black")]
      [else
       (local [(define c (sierpinski-carpet (- n 1)))
               (define i (square (image-width c) "solid" "white"))]
         (above (beside c c c)
                (beside c i c)
                (beside c c c)))]))

(define-example-code Summer2019/Languages/my-fractal-lang/main 001-easy
;Sierpinski triangle fractal
(let sierpinski ([n 8])
  (if (zero? n)
    (triangle 2 'solid 'red)
    (let ([t (sierpinski (- n 1))])
      (freeze (above t (beside t t)))))))


;This is the first step to building the Koch snowflake.
(define-example-code Summer2019/Languages/my-fractal-lang/main 002-medium
  (define (koch-curve n)
    (cond
      [(zero? n) (square 1 "solid" "black")]
      [else
       (local [(define smaller (koch-curve (- n 1)))]
         (beside/align "bottom"
                       smaller
                       (rotate 60 smaller)
                       (rotate -60 smaller)
                       smaller))]))
  (koch-curve 1))


(define-example-code Summer2019/Languages/my-fractal-lang/main 002-easy
;This is the second step to building the Koch snowflake.
  (define (koch-curve n)
    (cond
      [(zero? n) (square 1 "solid" "black")]
      [else
       (local [(define smaller (koch-curve (- n 1)))]
         (beside/align "bottom"
                       smaller
                       (rotate 60 smaller)
                       (rotate -60 smaller)
                       smaller))]))

  (above
   (beside
    (rotate 60 (  koch-curve 5))
    (rotate -60 (koch-curve 5)))
   (flip-vertical (koch-curve 5))))



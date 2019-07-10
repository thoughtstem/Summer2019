#lang racket

#|(provide
 (all-from-out
  "./examples/jason-examples.rkt"
  ; ==== PROVIDE MORE EXAMPLE FILES HERE ====
  
  ))

(require
  "./examples/jason-examples.rkt"
  ; ==== REQUIRE MORE EXAMPLE FILES HERE ====
  
  )
|#

(require ts-kata-util
         Summer2019/Languages/my-lang/main)

;TODO: Fill this file with real proto katas.

(define-example-code racket 
                     easy-addition-001
  (+ 2 2))

(define-example-code racket 
                     medium-addition-001
  (+ 2 2 2 (+ 2 2)))

(define-example-code racket 
                     hard-addition-001

  (+ 2 2 2 (+ 2 2) (+ 2 2 2)))

; ============ NEW KATAS 07/08/19 ===============

; map a function to a list of 10 numbers,
; 0 through 9, that reduces each value by 1
(define-example-code racket jason-easy-map-001
  
  (map sub1 (range 10))

  )


;Construct 3 solid circles, one blue, one red, and one yellow, all with a radius of 10.
(define-example-code fundamentals ambre-emily-easy-beside 
  (beside (circle 10 'solid "red")
          (circle 10 'solid "blue")
          (circle 10 'solid "yellow")
          ))

;Create a function with multiple rectangles that spell "HI" by first contructing an "H" and then using the rotate function.
(define-example-code fundamentals ambre-emily-medium-beside 
  
  (beside (rectangle 5 30 'solid "lightseagreen")
          (rectangle 15 5'solid "lightseagreen")
          (rectangle 5 30 'solid "lightseagreen")
          (rectangle 10 30 'solid "white")
          (rotate 90
                  (beside
                   (rectangle 5 30 'solid "lightseagreen")
                   (rectangle 20 5'solid "lightseagreen")
                   (rectangle 5 30 'solid "lightseagreen"))
                  ))

  )

;Define a function which aligns 3 stars beside each other and accepts color as an input. Use this to construct a framed image called the function 3 times, each with a different color and scale.
(define-example-code fundamentals ambre-emily-hard-beside 
  
  (define (star color)
 
    (beside/align "top"
                  (star-polygon 5 10 3 'solid color)
                  (star-polygon 10 10 3 'solid color)
                  (star-polygon 20 10 3 'solid color)
                  ))
 
  (frame (beside/align "bottom" (star "cornflowerblue") (scale 2 (star "midnight blue")) (star "cyan")
                       ))

  )




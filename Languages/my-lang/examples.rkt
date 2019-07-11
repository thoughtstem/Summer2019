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


;Using the curve function, make a straight line that runs diagonally through a  100 by 100 solid black rectangle
(define-example-code fundamentals cristine-sandora-easy-addcurve-001
  (add-curve
   (rectangle 100 100 "solid" "black")
   0 0 315 1/2
   100 100 315 1/2
   "white")
  )

;Create a curve inside of a 100 by 100 solid black rectangle and makes a shape similar to a Z
(define-example-code fundamentals cristine-sandora-medium-addcurve-001
  (add-curve
   (rectangle 100 100 "solid" "black")
   10 10 0 2
   90 90 0 2
   "white")
  )

;Create a symmetrical infinity symbol using two curves
(define-example-code fundamentals cristine-sandora-hard-addcurve-001
  (add-curve
   (add-curve (rectangle 100 100 "solid" "black")
              0 50 90 1/3
              100 50 90 1/3 "white")
   0 50 -90 1/3
   100 50 -90 1/3 "white")
  )

;Make a function that stacks a circle on another circle
(define-example-code fundamentals jacob-dietrich-easy-above
 (define (leaning-stack direction)
  (above/align direction
     (ellipse 60 20 100 "grey")
     (ellipse 50 20 100 "grey")
     (ellipse 40 20 100 "grey")
     (ellipse 20 20 100 "grey")))
  
 (leaning-stack "left")
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


;Easy Kata: "Rotate a green ellipse by 45 degrees"
(define-example-code fundamentals jake-jack-easy-rotate-001
  
  (rotate 45 (ellipse 60 20 "solid" "green"))
  )

;Medium Kata: "Define a function that rotates a square by x degrees" 
(define-example-code fundamentals jake-jack-medium-rotate-001

  (define (rotate-square x)
  (rotate x (square 20 "solid" "red")))

  (rotate-square 45)
  )

;Hard Kata: "Define a function which converts an angle in radians to
;degrees, and use that function to construct a piece of text upside down."
(define-example-code fundamentals jake-jack-hard-rotate-001

  (define (radians-to-degrees r)
  (* (/ 180 pi) r))

  (define(rotate-text r)
  (rotate (radians-to-degrees r) (text "Hello" 24 "black")))

  (rotate-text pi)
  )

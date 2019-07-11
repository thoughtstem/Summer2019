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

;Create a solid blue, star-shaped polygon, with step count of 2.  
;Hint: side-length, point count, step count, fill, color.

(define-example-code polygon michael-nish-polygon-001
  
  (star-polygon 40 5 2 "solid" "blue"))

;Code a regular 6-sided polygon (hexgaon) with red fill.
;Hint: side-length, side count, fill, color.
(define-example-code polygon michael-nish-polygon-002
  
  (regular-polygon 40 6 "outline" "red"))

;Create a Pulled Polygon with 7 sides, that has one-third pull on each side, and a purple outline.  
;Hint: side-length, side-count, pull (the curve or pulling of the sides), angle, fill, color.
(define-example-code polygon michael-nish-polygon-003
  
(pulled-regular-polygon 70 7 1/3 30 "outline" "purple"))

;Create a solid green, arrow-shaped polygon with 4 vertices.
;Hint: list of vertices, fill, color
#;(define-example-code polygon michael-nish-polygon-004
  
  (polygon (list (make-posn 0 0)
                 (make-posn -10 20)
                 (make-posn 60 0)
                 (make-posn -10 -20))
           "solid" "green")

  )

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

;@bold{EASY} - Overlay a red circle centered on top of a white rectangle (Use the Japanese flag as reference)

;HINT - The syntax for (overlay) is @verbatim{(overlay (shape on bottom) (shape on top))}
(define-example-code fundamentals tom-maya-compose-easy-001
  

  (overlay (circle 20 'solid "red") (rectangle  130 80 'solid "snow"))

  )

;@bold{MEDIUM} - Overlay 5 circles that get smaller and less transparent.

;HINT - change @bold{'solid} to a number between 0 and 255 to change the transparency of the circle.

(define-example-code fundamentals tom-maya-medium-overlay-001
  
  (overlay (circle 50 50 "Midnightblue")
           (circle 40 100 "Midnightblue")
           (circle 30 150 "Midnightblue")
           (circle 20 200 "Midnightblue")
           (circle 10 250 "Midnightblue"))
  )


;@bold{HARD} - Use multiple overlay/offset functions to make a house with an isosceles triangle as a roof, a rectangle as the front of the house, two squares as the windows, and a vertical rectangle as a door

;HINT - use a seperate @literal{(overlay/offset)} function for each shape, and nest them to create the house.

; - the syntax for (overlay/offset) is @verbatim{(overlay/offset (shape on top) x-offset y-offset (shape on bottom))}


(define-example-code fundamentals tom-maya-hard-overlay-001
  
  (overlay/offset (isosceles-triangle 60 120 "solid" "saddlebrown") 0 55
                  (overlay/offset (square 25 'solid "snow") 20 20
                                  (overlay/offset (square 25 'solid "snow") -20 20
                                                  (overlay/offset (rectangle 20 35 'solid "lime") 0 -22
                                                                  (rectangle 100 80 'solid "deepskyblue")))))
  )


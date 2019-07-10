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
;@bold{EASY} - Overlay a yellow star centered on top of a red rectangle (Use the Vietnam flag as reference)

   ;HINT - The syntax for (overlay) is @verbatim{(overlay (shape on bottom) (shape on top))}

(define-example-code fundamentals tom-maya-easy-overlay-001

  (overlay (star 30 'solid "yellow") (rectangle  130 80 'solid "red"))
  
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
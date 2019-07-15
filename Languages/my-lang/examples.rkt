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
         ;Summer2019/Languages/my-lang/mainr
         (only-in 2htdp/image
                  overlay
                  overlay/offset
                  above
                  above/align
                  beside
                  beside/align
                  rectangle
                  add-curve
                  pulled-regular-polygon
                  regular-polygon
                  star-polygon
                  star
                  square
                  isosceles-triangle
                  )
         (except-in pict
                    rectangle)
         )

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

(define-example-code fundamentals michael-nish-polygon-001
  
  (star-polygon 40 5 2 "solid" "blue"))

;Code a regular 6-sided polygon (hexgaon) with red fill.
;Hint: side-length, side count, fill, color.
(define-example-code fundamentals michael-nish-polygon-002
  
  (regular-polygon 40 6 "outline" "red"))

;Create a Pulled Polygon with 7 sides, that has one-third pull on each side, and a purple outline.  
;Hint: side-length, side-count, pull (the curve or pulling of the sides), angle, fill, color.
(define-example-code fundamentals michael-nish-polygon-003
  
(pulled-regular-polygon 70 7 1/3 30 "outline" "purple"))

;Create a solid green, arrow-shaped polygon with 4 vertices.
;Hint: list of vertices, fill, color
#;(define-example-code fundamentals michael-nish-polygon-004
  
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

; ============ GROUP A ================


;========== EASY MAP

(define-example-code data-sci grpa-easy-map-001
  (map sub1 (range 10)))

(define-example-code data-sci grpa-easy-map-002
  (map rectangle (range 10)(range 10)))

(define-example-code data-sci grpa-easy-map-003
  (map circle (shuffle (range 10 100 10))))

(define-example-code data-sci grpa-easy-map-004
  (map (negate =) (list 1 2 1) (list 1 2 3)))

(define-example-code data-sci grpa-easy-map-005
  (map string-append (list "Hi" "Apple ")(list " there" "Banana")))


;========== EASY APPLY

(define-example-code data-sci grpa-easy-apply-001
  (apply + (range 10)))

(define-example-code data-sci grpa-easy-apply-002
  (apply gcd (map sub1 (range -10 11 2))))

(define-example-code data-sci grpa-easy-apply-003
  (apply hc-append (map jack-o-lantern (range 20))))

(define-example-code data-sci grpa-easy-apply-004
  (apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40))))


;========== EASY CURRY

(define-example-code data-sci grpa-easy-curry-001
  (map (curry cloud 100)(range 20)))

(define-example-code data-sci grpa-easy-curry-002
  (map (curry angel-wing 100 100) (list #t #f)))

(define-example-code data-sci grpa-easy-curry-003
  (apply cc-superimpose
         (map (curry rotate (ellipse 40 80))(range 0 120 10))))


;========== EASY COMPOSE

(define-example-code data-sci grpa-easy-compose-001
  (apply cc-superimpose (map (compose circle sqr) (range 20))))

; ============ GROUP B ================
;Add all odd numbers from 0 to 100
(define-example-code data-sci katas-b-numbers-001
 (apply +
 (map (curry + -1)
 (map (curry * 2)(range 1 51))))
  )

;Multiply the sums of 1-10 and 11-20
(define-example-code data-sci katas-b-numbers-002
 (*(apply +
 (range 1 11))
 (apply +
 (range 11 21)))
  )

;Create several jack-o-lanterns of different sizes.
(define-example-code data-sci katas-b-change-size-001
 (apply hbl-append
 (map jack-o-lantern (range 25 30)))
  )

;Create a row of different colored file icons increasing in size.
(define-example-code data-sci katas-b-change-size-002
 (apply hbl-append
 (map file-icon (map (curry * 10) (range 5))
 (map (curry * 10) (range 5))
 (list "gray" "orange" "red" "green" "blue")))
  )

;Make a vertical line of 6 circles with radius 50 that are the colors of the rainbow
(define-example-code data-sci katas-b-colors-rotation-superimpose-001
 (define (rainbow x)
 (map (lambda (color)
 (colorize x color))
 (list "red" "orange" "yellow" "green" "blue" "purple")))
 (apply vc-append(rainbow (circle 50)))
  )

;Print out a vertical list of rotated purple squares with width 30.
(define-example-code data-sci katas-b-colors-rotation-superimpose-002
 (define nums (range 0 10))
 (define (rotateSquare n)
 (rotate (colorize (filled-rectangle 30 30)
 "purple") n))
 (apply vc-append (map rotateSquare nums))
  )

;Create 4 circles and superimpose 7 rotated rectangles within the smallest circle
(define-example-code data-sci katas-b-colors-rotation-superimpose-003
 (apply cc-superimpose
 (append
 (map (compose circle sqr) (range 10 15))
 (map (curry rotate (rectangle 100 100)) (range 7))))
  )

;Superimpose 100 rectangles on eachother and rotate each consecutive rectangle by 1 degree.
(define-example-code data-sci katas-b-colors-rotation-superimpose-004
 (apply cc-superimpose
 (map
 (curry rotate(rectangle 100 200)) (range 100)))
  )

;Defines a function that prints out a jack-o-lantern if the input
;is a standard-fish with width 100 and length 50. Otherwise, add 1 to each number in the
;list (1 2 3).
(define-example-code data-sci katas-b-more-picts-001

 (define nice-fish (standard-fish 100 50))
 (define (func x)
   
 (if (equal? x nice-fish)
 (jack-o-lantern 100)
 (map add1 (list 1 2 3))))

 (func nice-fish)
  )

;Make a list of ellipses that alternate colors of the rainbow
(define-example-code data-sci katas-b-more-picts-002
 (define (colors x)
 (map (lambda (color)
 (colorize x color))
 (list "red" "orange" "yellow" "green" "blue" "purple")))
 (colors (circle 50))
  )

;Create a list of alternating colors.
(define-example-code data-sci katas-b-alternating-list-001
 (define nums (range 20))
 (define bools (map even? nums))
 (define (bools->color b)
 (if b "salmon" "midnight blue"))
 (define colors
 (map
 bools->color
 bools))
 colors
  )

;Create a list of fish with alternating colors.
(define-example-code data-sci katas-b-alternating-list-002
 (define (make-color b)
 (if b "blue" "purple"))

 (define (make-fish c)
 (standard-fish 50 50 #:color c))

 (map (compose make-fish make-color even?) (range 15))
  )
  
  
; ============ GROUP C ================

; Start with a list from 1 to 3, add 4 to each number, multiply each number by 2, multiply all the numbers together, and finally, subtract 1.
(define-example-code data-sci grpC-nums-01
  (define (add4 x) (+ x 4))
  (define (multiply2 x) (* x 2))
  (sub1 (apply * (map multiply2 (map add4 (list 1 2 3)))))
  )
; Append and remove numbers from a list
(define-example-code data-sci grpC-nums-02
  (define (g x) (append (list x) (list 3 4)))
  (define (removeC x) (remove 3 x))
  (map removeC (map g (list 1 2)))
  )
; Use a lambda function to group a two lists by their remainder when divided by 2. The two lists are created by each adding one to a list from
;1 to 3, then one subtracting all the numbers and the other adding them all.
(define-example-code data-sci grpC-nums-03
  (group-by (lambda (x) (modulo x 2))
            (list (apply + (map add1 (list 1 2 3)))(apply - (map add1 (list 1 2 3)))))
  )
;Use an if statement to print a range of jack-o-lanterns if the function is called with a certain parameter, and a disk otherwise.
(define-example-code data-sci grpC-bpics-01
  (define printPumpkin (range 2))
 
  (define (func x)
    (if (equal? x printPumpkin)
        (map jack-o-lantern (range 90 110 5))
        (map disk (range 30 50 5))))
 
  (func printPumpkin)
  (func circle)
  )
; Shuffle the order of horizontally appended pictures
(define-example-code data-sci grpC-bpics-02
  (apply hc-append (shuffle (list (desktop-machine 1)
                                  (cloud 100 75)
                                  (standard-fish 100 50)
                                  (jack-o-lantern 100)
                                  (thermometer)
                                  (standard-fish 100 50 #:open-mouth #t #:color "olive"))))
  )
;Create 10 clouds that alternate between two colors. Vertically append them.
(define-example-code data-sci grpC-bpics-03
  (define nums (range 10))
 
  (define bools (map even? nums))
  (define (toColor b)
    (if b "lavenderblush" "red"))
 
  (define colors
    (map toColor bools))
 
  (apply vc-append (map cloud (range 90 100) (range 90 100) colors))
  )
;Make 4 thermometers grow in size and rotate every other thermometer by pi radians.
(define-example-code data-sci grpC-ori-01
  (define nums (map (curry * pi) (range 4)))
  (define (thermo n r)
    (rotate (thermometer #:stem-height n
                         #:bottom-circle-diameter 40
                         #:top-circle-diameter 20
                         #:mercury-inset 4) r))
 
  (apply hc-append (map thermo (range 40 120 20) nums))
  )
; Create 10 standard fish, and alternate their direction.
(define-example-code data-sci grpC-ori-02
  (define nums (range 0 10))
  (define bools (map even? nums))
  (define (flip b)
    (if b 'right 'left))
  (define direction (map flip bools))
 
  (define (fish s)
    (standard-fish 100 50 #:direction s #:open-mouth #t #:color "salmon"))
 
  (apply hc-append (map fish direction))
  )
; Make a column of 10 slighly rotated squares and a column of slighly rotated arrows and horizonally append them.
(define-example-code data-sci grpC-ori-03
  (define nums (range 0 10))
  (define (rotateSquare n)
    (rotate (colorize (filled-rectangle 30 30)
                      "purple") n))
  (define (rotateArrow x)
    (rotate (arrow 30 (/ pi 2)) x))
  (apply hc-append (list (apply vc-append (map rotateSquare nums)) (apply vc-append (map rotateArrow nums))))
  )
; Make 20 angel wings and alternate their direction and color.
(define-example-code data-sci grpC-ori-04
  (define nums (range 20))
  (define bools (map even? nums))
  (define (bools->color b)
    (if b "salmon" "midnight blue"))
  (define colors
    (map
     bools->color
     bools))
  (define (make c b)
    (curry colorize (angel-wing 20 30 b) c))
  (apply hc-append (map make colors bools))
  )


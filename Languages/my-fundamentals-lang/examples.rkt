#lang racket

(require ts-kata-util)


(define-example-code Summer2019/Languages/my-fundamentals-lang/main superset-lang-demo
   (face))

(define-example-code Summer2019/Languages/my-fundamentals-lang/main superset-lang-demo-2
  (define (spin-face r)
    (rotate r (face)))

  (big-bang 0
    (on-tick add1)
    (to-draw spin-face)))



; ============ NEW KATAS 07/08/19 ===============

;Create a solid blue, star-shaped polygon, with step count of 2.  
;Hint: side-length, point count, step count, fill, color.

(define-example-code fundamentals 001-michael-nish-polygon
  
  (star-polygon 40 5 2 "solid" "blue"))

;Code a regular 6-sided polygon (hexgaon) with red fill.
;Hint: side-length, side count, fill, color.
(define-example-code fundamentals 002-michael-nish-polygon
  
  (regular-polygon 40 6 "outline" "red"))

;Create a Pulled Polygon with 7 sides, that has one-third pull on each side, and a purple outline.  
;Hint: side-length, side-count, pull (the curve or pulling of the sides), angle, fill, color.
(define-example-code fundamentals 003-michael-nish-polygon
  
(pulled-regular-polygon 70 7 1/3 30 "outline" "purple"))

;Create a solid green, arrow-shaped polygon with 4 vertices.
;Hint: list of vertices, fill, color
#;
(define-example-code fundamentals 004-michael-nish-polygon
  
  (polygon (list (make-posn 0 0)
                 (make-posn -10 20)
                 (make-posn 60 0)
                 (make-posn -10 -20))
           "solid" "green")

  )

; map a function to a list of 10 numbers,
; 0 through 9, that reduces each value by 1
(define-example-code racket 005-jason-easy-map
  
  (map sub1 (range 10))

  )


;Using the curve function, make a straight line that runs diagonally through a  100 by 100 solid black rectangle
(define-example-code fundamentals 006-cristine-sandora-easy-addcurve
  (add-curve
   (rectangle 100 100 "solid" "black")
   0 0 315 1/2
   100 100 315 1/2
   "white")
  )

;Create a curve inside of a 100 by 100 solid black rectangle and makes a shape similar to a Z
(define-example-code fundamentals 007-cristine-sandora-medium-addcurve
  (add-curve
   (rectangle 100 100 "solid" "black")
   10 10 0 2
   90 90 0 2
   "white")
  )

;Create a symmetrical infinity symbol using two curves
(define-example-code fundamentals 008-cristine-sandora-hard-addcurve
  (add-curve
   (add-curve (rectangle 100 100 "solid" "black")
              0 50 90 1/3
              100 50 90 1/3 "white")
   0 50 -90 1/3
   100 50 -90 1/3 "white")
  )

;Make a function that stacks a circle on another circle
(define-example-code fundamentals 009-jacob-dietrich-easy-above
  (define (leaning-stack direction)
    (above/align direction
                 (ellipse 60 20 100 "grey")
                 (ellipse 50 20 100 "grey")
                 (ellipse 40 20 100 "grey")
                 (ellipse 20 20 100 "grey")))
  
  (leaning-stack "left")
  )

;Construct 3 solid circles, one blue, one red, and one yellow, all with a radius of 10.
(define-example-code fundamentals 010-ambre-emily-easy-beside 
  (beside (circle 10 'solid "red")
          (circle 10 'solid "blue")
          (circle 10 'solid "yellow")
          ))

;Create a function with multiple rectangles that spell "HI" by first contructing an "H" and then using the rotate function.
(define-example-code fundamentals 011-ambre-emily-medium-beside 
  
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
(define-example-code fundamentals 012-ambre-emily-hard-beside 
  
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
(define-example-code fundamentals 013-jake-jack-easy-rotate
  
  (rotate 45 (ellipse 60 20 "solid" "green"))
  )

;Medium Kata: "Define a function that rotates a square by x degrees" 
(define-example-code fundamentals 014-jake-jack-medium-rotate

  (define (rotate-square x)
    (rotate x (square 20 "solid" "red")))

  (rotate-square 45)
  )

;Hard Kata: "Define a function which converts an angle in radians to
;degrees, and use that function to construct a piece of text upside down."
(define-example-code fundamentals 015-jake-jack-hard-rotate

  (define (radians-to-degrees r)
    (* (/ 180 pi) r))

  (define(rotate-text r)
    (rotate (radians-to-degrees r) (text "Hello" 24 "black")))

  (rotate-text pi)
  )

;@bold{EASY} - Overlay a red circle centered on top of a white rectangle (Use the Japanese flag as reference)

;HINT - The syntax for (overlay) is @verbatim{(overlay (shape on bottom) (shape on top))}
(define-example-code fundamentals 016-tom-maya-compose-easy
  

  (overlay (circle 20 'solid "red") (rectangle  130 80 'solid "snow"))

  )

;@bold{MEDIUM} - Overlay 5 circles that get smaller and less transparent.

;HINT - change @bold{'solid} to a number between 0 and 255 to change the transparency of the circle.

(define-example-code fundamentals 017-tom-maya-medium-overlay
  
  (overlay (circle 50 50 "Midnightblue")
           (circle 40 100 "Midnightblue")
           (circle 30 150 "Midnightblue")
           (circle 20 200 "Midnightblue")
           (circle 10 250 "Midnightblue"))
  )


;@bold{HARD} - Use multiple overlay/offset functions to make a house with an isosceles triangle as a roof, a rectangle as the front of the house, two squares as the windows, and a vertical rectangle as a door

;HINT - use a seperate @literal{(overlay/offset)} function for each shape, and nest them to create the house.

; - the syntax for (overlay/offset) is @verbatim{(overlay/offset (shape on top) x-offset y-offset (shape on bottom))}


(define-example-code fundamentals 018-tom-maya-hard-overlay
  
  (overlay/offset (isosceles-triangle 60 120 "solid" "saddlebrown") 0 55
                  (overlay/offset (square 25 'solid "snow") 20 20
                                  (overlay/offset (square 25 'solid "snow") -20 20
                                                  (overlay/offset (rectangle 20 35 'solid "lime") 0 -22
                                                                  (rectangle 100 80 'solid "deepskyblue")))))
  )

;@bold{EASY} - Make a snowman with 3 circles


(define-example-code Summer2019/Languages/my-fundamentals-lang/main 019-snowman-simple
  
  (define snowman
      (above (circle 20 "solid" "blue")
             (circle 40 "solid" "blue")
             (circle 60 "solid" "blue")))

  snowman)


(define-example-code Summer2019/Languages/my-fundamentals-lang/main 020-snowman-detailed
  
(define head
  (circle 20 "solid" "blue"))
(define torso
  (circle 40 "solid" "blue"))
(define lower-body
  (circle 60 "solid" "blue"))
(define eyes
  (overlay (circle 3 "solid" "black")
           (circle 5 "solid" "white")))
(define face
  (overlay/offset eyes -10 5
                 (overlay/offset eyes 10 5
                 head)))
(define left-arm
  (rotate 45 (rectangle 3 60 "solid" "brown")))
(define right-arm
  (flip-vertical left-arm))
(define upper-body
  (overlay/offset left-arm 65 15
                 (overlay/offset right-arm  -50 15 torso)))

(define detailed-snowman
  (above face upper-body lower-body))

detailed-snowman)


(define-example-code Summer2019/Languages/my-fundamentals-lang/main 021-snowman-animated-left
  
(define snowman
      (above (circle 20 "solid" "blue")
             (circle 40 "solid" "blue")
             (circle 60 "solid" "blue")))

(define (draw-shape num)
 (underlay/offset (rectangle 800 200 "solid" "white")
                  (- num 400) 20 snowman))

(define (fast-move num)
 (+ num 5))

(big-bang 0
 (on-tick fast-move)
 (to-draw draw-shape)))


(define-example-code Summer2019/Languages/my-fundamentals-lang/main 022-snowman-animated-right

  (define snowman
      (above (circle 20 "solid" "blue")
             (circle 40 "solid" "blue")
             (circle 60 "solid" "blue")))

(define (draw-shape num)
 (underlay/offset (rectangle 800 200 "solid" "white")
                  (- 400 num) 20 snowman))

(define (fast-move num)
 (+ num 5))

(big-bang 0
 (on-tick fast-move)
 (to-draw draw-shape)))
  
  
(define-example-code Summer2019/Languages/my-fundamentals-lang/main 023-snowman-jumping
(define (head num)
  (circle 20 "solid" (fade-color num)))
(define (torso num)
  (circle 40 "solid" (fade-color num)))
(define (lower-body num)
  (circle 60 "solid" (fade-color num)))
(define eyes
  (overlay (circle 3 "solid" "black")
           (circle 5 "solid" "white")))
(define (face num)
  (overlay/offset eyes -10 5
                 (overlay/offset eyes 10 5
                 (head num))))
(define left-arm
  (rotate 45 (rectangle 3 60 "solid" "brown")))
(define right-arm
  (flip-vertical left-arm))
(define (upper-body num)
  (overlay/offset left-arm 65 15
                 (overlay/offset right-arm  -50 15 (torso num))))

(define (detailed-snowman num)
  (above (face num) (upper-body num) (lower-body num)))

(define bg
  (rectangle 300 600 "solid" "white"))

(define (draw-shape num)
 (underlay/offset bg 0 (jumping num) (detailed-snowman num)))

(define (fast-move num)
 (+ num 5))

(define (jumping num)
  (+ (* 150 (sin (/ num 20))) 20))

(define (fade-color num)
  (if (< num 255) (make-color 0 0 (+ num))
      (make-color 0 0 255)))

(big-bang 0
 (on-tick fast-move)
 (to-draw draw-shape))
  )






;MEDIUM Make a Pokeball
(define-example-code fundamentals 024-pokeball-medium

          (overlay
           (circle 15 'solid 'white)
           (circle 25 'solid 'black)
           (rectangle 120 10 'solid 'black)
           (place-image
            (crop 0 0 120 60 (circle 60 'solid 'red))
            60 30
            (circle 60 'solid 'white))
           (circle 70 'solid 'black))

)

;MEDIUM Make a Pokeball that is random color
(define-example-code fundamentals 025-pokeball-medium
(define (random-color)
   (first (shuffle (list 'red 'orange 'yellow 'green 'blue 'purple))))

  (overlay
           (circle 15 'solid 'white)
           (circle 25 'solid 'black)
           (rectangle 120 10 'solid 'black)
           (place-image
            (crop 0 0 120 60 (circle 60 'solid (random-color)))
            60 30
            (circle 60 'solid 'white))
           (circle 70 'solid 'black))
  )

;HARD Make a Pokeball animation with big-bang that moves across the screen
(define-example-code fundamentals 026-pokeball-hard
  
(define WIDTH 400)
(define HEIGHT 300)
(define x-speed 1)
(define y-speed 1)
(define b 0)
(define radius 20)

(struct posn (x y))
(define (update-x-pos x) (+ x x-speed))
(define (update-y-pos y) (+ y y-speed))

(define (pokeball)
  (scale (/ radius 70) (rotate b
          (overlay
           (circle 15 'solid 'white)
           (circle 25 'solid 'black)
           (rectangle 120 10 'solid 'black)
           (place-image
            (crop 0 0 120 60 (circle 60 'solid 'red))
            60 30
            (circle 60 'solid 'white))
           (circle 70 'solid 'black))
          )))

(define (render p)
(place-image (pokeball)
             (posn-x p) (posn-y p)
             (empty-scene WIDTH HEIGHT)))

(define (update p)
  (set! b (+ 4 b))
  (posn (update-x-pos (posn-x p)) (update-y-pos (posn-y p))))


(big-bang (posn 100 100)
  [to-draw render]
  [on-tick update]
))

;EXTREMELY HARD Make a Pokeball animation with big-bang that moves across the screen and bounces off the boundaries
(define-example-code fundamentals 027-pokeball-hard

(define WIDTH 400)
(define HEIGHT 300)
(define x-speed -1)
(define y-speed 1)
(define b 0)
(define radius 20)

(struct posn (x y))
(define (update-x-pos x) (+ x x-speed))
(define (update-y-pos y) (+ y y-speed))


(define (update p)
  (set! b (+ 4 b))
  (check-hor-borders (posn-x p))
  (check-ver-borders (posn-y p))
  (posn (update-x-pos (posn-x p)) (update-y-pos (posn-y p))))

(define (check-hor-borders i)
  (cond
    [(negative? (- i radius)) (set! x-speed (* -1 x-speed))]
    [(positive? (- i (- WIDTH radius))) (set! x-speed (* -1 x-speed))]
    [else (set! x-speed (* 1 x-speed))]))

(define (check-ver-borders j)
  (cond
    [(negative? (- j radius)) (set! y-speed (* -1 y-speed))]
    [(positive? (- j (- HEIGHT radius))) (set! y-speed (* -1 y-speed))]
    [else (set! y-speed (* 1 y-speed))]))


(define (pokeball)
  (scale (/ radius 70) (rotate b
          (overlay
           (circle 15 'solid 'white)
           (circle 25 'solid 'black)
           (rectangle 120 10 'solid 'black)
           (place-image
            (crop 0 0 120 60 (circle 60 'solid 'red))
            60 30
            (circle 60 'solid 'white))
           (circle 70 'solid 'black))
          )))

(define (render p)
(place-image (pokeball)
             (posn-x p) (posn-y p)
             (empty-scene WIDTH HEIGHT)))


(big-bang (posn 100 100)
  [to-draw render]
  [on-tick update] )
)
  
;Create a bulls-eye image with three areas— a large red area, a medium blue area, and a small white area.
(define-example-code fundamentals 028-maggie-sabrina 
  (overlay
   (circle 10 "solid" "white")
   (circle 20 "solid" "blue")
   (circle 30 "solid" "red")))

;Create a stop sign by overlaying a "STOP" message in white font over a red octagon.
(define-example-code fundamentals 029-maggie-sabrina
    (overlay
     (text/font "STOP" 45 "white" "Gill Sans" 'swiss 'normal 'bold #f)
     (regular-polygon 60 8 "solid" "red"))
    )
  
;Create Captain America's shield. Recall that the shield has a red, white, red, and blue pattern with a white star in the middle.
(define-example-code fundamentals 030-maggie-sabrina
  (overlay/align "middle" "middle"
                 (star 34 "solid" "white")
                 (circle 29 "solid" "blue")
                 (circle 36 "solid" "red")
                 (circle 43 "solid" "white")
                 (circle 50 "solid" "red")))

;HARDER! Create a christmas tree with three layers of foliage and a brown stump.
(define-example-code fundamentals 031-maggie-sabrina
  (overlay/offset
(overlay/offset
 (overlay/offset
  (isosceles-triangle 40 45 "solid" "seagreen")
  0 30
  (isosceles-triangle 80 45 "solid" "seagreen")
  )
 0 30
 (isosceles-triangle 120 40 "solid" "seagreen")
 )
0 70
(rectangle 10 20 "solid" "brown")))





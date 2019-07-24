#lang racket

(require ts-kata-util)

;==== Googly Eye ===

; Easy: Make an eye from an outlined circle with a smaller solid black circle
; inside of it (the pupil). Make the eyes rotate counterclockwise over time.

(define-example-code Summer2019/Languages/my-game-lang/main 001-rotating-eye

; TO-DRAW
(define (create-rotating-eye angle)
  (rotate angle eye))

; The eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
		    (circle 30 "outline" "black")))

(big-bang 0
  (on-tick add1)
  (to-draw create-rotating-eye)))

;Medium: Make an eye with a pupil that rotates when the mouse is pressed in the window.

(define-example-code Summer2019/Languages/my-game-lang/main 002-rotating-eye
  
; TO-DRAW
(define (create-rotating-eye angle)
 (rotate angle eye))

; Eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
                           (circle 30 "outline" "black")))

; Checks mouse input
(define (mouse-handler w x y me)
 (cond
   [(mouse=? me "button-down") (+ w 30)]
   [else w]))

(big-bang 0
 (to-draw create-rotating-eye)
 (on-mouse mouse-handler)))

;Hard: Make an eye with a pupil that rotates when the mouse is clicked on the eyeball.
;Hint: Use the distance formula! The center of the eye is located at 30 30.
;The radius of the eye is 30.

(define-example-code Summer2019/Languages/my-game-lang/main 003-rotating-eye
  
; TO-DRAW
(define (create-rotating-eye angle)
 (rotate angle eye))

; Eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
                           (circle 30 "outline" "black")))

; Checks mouse input
(define (mouse-handler w x y me)
 (cond
   [(and (mouse=? me "button-down") (check-posn x y)) (+ w 30)]
   [else w]))

; Checks if the mouse's posn is inside of the eye
(define (check-posn x y)
  (if (< (calc-distance x y 30 30) 30) #t #f))

; Distance formula
(define (calc-distance x1 y1 x2 y2)
  (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1)))))

(big-bang 0
  (to-draw create-rotating-eye)
  (on-mouse mouse-handler)))

;Kata 4: Make an eye with pupils that follow the location of your mouse

;Hint: Remember your trigonomety! If you know the x and y distance between two points,
;you can find the angle between them. Use (atan y x), and remember that the signs of
;x and y matter!

(define-example-code Summer2019/Languages/my-game-lang/main 004-rotating-eye
; TO-DRAW
(define (create-rotating-eye angle)
(place-image (rotate angle eye)
             250 250
             (empty-scene 500 500)))

; Eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
                          (circle 30 "outline" "black")))

; Handles mouse event
(define (mouse-handler w x y me)
(cond
  [(mouse=? me "move") (calc-angle x y)]
  [else w]))

; Calculates the angle between the center of the eye and where the mouse is
(define (calc-angle x y)
  (+ 180 (/ (* 180 (atan (- x 250) (- y 250))) pi)))

(big-bang 0
  (to-draw create-rotating-eye)
  (on-mouse mouse-handler)))

;==== Plane Game ===

;Kata1: Make a plane at the bottom of the window that moves left and right
;Use the plane.png image in this folder

(define-example-code Summer2019/Languages/my-game-lang/main 001-plane-game
		     (define IMAGEWIDTH 100)

; TO-DRAW
(define (create-red-square x)
  (place-image (scale 0.2 (bitmap "./plane.png"))
            (+ (/ IMAGEWIDTH 2) x) 585
            (empty-scene IMAGEWIDTH 600)))

; Takes in keys
(define (moveit x k)
  (+ x (keypress->distance k x)))

; Checks which key is pressed
(define (keypress->distance key x)
  (cond [(key=? key "left")     (if(<= x (- (/ IMAGEWIDTH 2) IMAGEWIDTH)) 0 -5)]
      [(key=? key "right")    (if(>= x (/ IMAGEWIDTH 2)) 0 5)]
      [else 0]))

(big-bang 0
  (on-key moveit)
  (to-draw create-red-square)))

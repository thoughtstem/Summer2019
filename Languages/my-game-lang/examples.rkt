#lang racket

(require ts-kata-util)

;==== Googly Eyes ===

; Kata1: Make an eye from an outlined circle with a smaller solid black circle
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

;Kata2: Make an eye with a pupil that rotates when the mouse is pressed in the window.

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

;Kata3: Make an eye with a pupil that rotates when the mouse is clicked on the eyeball.
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

; Kata4: Make an eye with pupils that follow the location of your mouse

; Hint: Remember your trigonomety! If you know the x and y distance between two points,
; you can find the angle between them. Use (atan y x), and remember that the signs of
; x and y matter!

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

; Kata2: Make a window where a square appears on tick 50
; This kata teaches the usage of structs (in structs) and adding things to lists
; Extra Challenge - Using ticks, make a new square at a different position every 4 ticks

(define-example-code Summer2019/Languages/my-game-lang/main 002-plane-game
		     (define IMAGEWIDTH 100)

; Our structs
(struct world (sqrs tick) #:transparent #:mutable)
(struct posn (x y) #:transparent)
(struct sqr (posn) #:transparent)

(define START-POSN (posn 100 100))

;-----------------------------------------

; Adds a sqr struct object to the world's list of sqrs
(define (sqr-to-world my-world)
  (set-world-sqrs! my-world (cons (new-sqr) (world-sqrs my-world))))

; One sqr at START-POSN
(define (new-sqr)
  (sqr START-POSN))

; Increments the tick in the my world struct
(define (incr-tick my-world)
  (struct-copy world my-world [tick (+ (world-tick my-world) 1)]))

; The starting world definition
(define my-world
    (world '() 0))

;-------------------------------------------
; Rendering the world

; TO-DRAW
(define (render-world my-world)
  ; Checks when we are at tick 50
  (if (= (world-tick my-world) 50) (sqr-to-world my-world) 0)
  (sqrs+scene (world-sqrs my-world)
   (empty-scene 200 200 "black")))

; Calls the placing of all images in the sqrs list
(define (sqrs+scene sqrs scene)
  (foldl (λ (s scene)
           (img+scene (sqr-posn s)
                      (square 10 "solid" "yellow")
                      scene))
         scene sqrs))

; Places the images
(define (img+scene posn img scene)
  (place-image img (posn-x posn) (posn-y posn) scene))
  
(big-bang my-world
  (on-tick incr-tick)
  (to-draw render-world)))


; Kata 3: Make a bullet that starts at the bottom of the window. When space is pressed,
; the bullet is fired upward. Once it leaves the screen at the top, it returns to
; its starting position, where it could be fired once again.

; Our bullet is a solid rect that is longer vertically than horizontally is colored gold.
; Resetting the tick is recommended.

(define-example-code Summer2019/Languages/my-game-lang/main 003-plane-game
		     (define IMAGEWIDTH 100)

(struct bullet(tick shoot) #:transparent #:mutable)

; TO-DRAW
(define (up-moving-square b)
 (place-image (rectangle 5 15 "solid" "gold")
              150 (if (and (bullet-shoot b) (> (- 600 (* (modulo (bullet-tick b) 120) 5)) 0))
                           (- 600 (* (modulo (bullet-tick b) 120) 5))
                           600)
              (empty-scene 600 600)))

(define (new-bullet b)
 (up-moving-square b))

; Checks key pressed
(define (keypress->air key)
  (cond
    [(key=? key " ") (new-bullet (bullet 1 #t)) #t]))

; Resets the tick
(define (sqr-handle-key b k)
  (if (not (bullet-shoot b))
      (struct-copy bullet b [shoot (or (bullet-shoot b) (keypress->air k))][tick 1])
      (struct-copy bullet b [shoot (or (bullet-shoot b) (keypress->air k))])))

; Resets the shoot and increments the tick
(define (incre-tick b)
 (if (= (modulo (bullet-tick b) 120) 0)
     (struct-copy bullet b [shoot #f][tick (+ 1 (bullet-tick b))])
     (struct-copy bullet b [tick (+ 1 (bullet-tick b))])))

; Our bullet state created from the struct
(define b
 (bullet 1 #f))

(big-bang b
 (on-tick incre-tick)
 (on-key sqr-handle-key)
 (to-draw up-moving-square)))

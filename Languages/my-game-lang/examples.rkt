#lang racket

(require ts-kata-util)


;Kata 1: Make an eye from an outlined circle with a smaller solid black circle
;inside of it (the pupil). Make the eyes rotate counterclockwise over time.

(define-example-code Summer2019/Languages/my-game-lang/main rotating-eye

; TO-DRAW
(define (create-rotating-eye angle)
  (rotate angle eye))

; The eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
		    (circle 30 "outline" "black")))

(big-bang 0
  (on-tick add1)
  (to-draw create-rotating-eye)))

;Kata 2: Make an eye with a pupil that rotates when the mouse is pressed in the window.

(define-example-code Summer2019/Languages/my-game-lang/main window-click-rotating-eye
  
; TO-DRAW
(define (create-spinning-eye angle)
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
 (to-draw create-spinning-eye)
 (on-mouse mouse-handler)))

;Kata 3: Make an eye with a pupil that rotates when the mouse is clicked on the eyeball.
;Hint: Use the distance formula! The center of the eye is located at 30 30.
;The radius of the eye is 30.

(define-example-code Summer2019/Languages/my-game-lang/main clickable-rotating-eye
  
; TO-DRAW
(define (create-spinning-eye angle)
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
  (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1))))))

;Kata 4: Make an eye with pupils that follow the location of your mouse

;Hint: Remember your trigonomety! If you know the x and y distance between two points,
;you can find the angle between them. Use (atan y x), and remember that the signs of
;x and y matter!

(define-example-code Summer2019/Languages/my-game-lang/main following-googly-eye
; TO-DRAW
(define (create-spinning-eye angle)
(place-image (rotate angle eye)
             250 250
             (empty-scene 500 500)))

; Eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
                          (circle 30 "outline" "black"))))

; Handles mouse event
(define (mouse-handler w x y me)
(cond
  [(mouse=? me "move") (calc-angle x y)]
  [else w]))

; Calculates the angle between the center of the eye and where the mouse is
(define (calc-angle x y)
  (+ 180 (/ (* 180 (atan (- x 250) (- y 250))) pi)))

(big-bang 0
  (to-draw create-spinning-eye)
  (on-mouse mouse-handler))


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



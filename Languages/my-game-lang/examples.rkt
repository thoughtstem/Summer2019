#lang racket

(require ts-kata-util)


;Kata 1: Make an eye from an outlined circle with a smaller solid black circle
;inside of it (the pupil). Make the eyes rotate counterclockwise over time.

(define-example-code Summer2019/Languages/my-game-lang Rotating-Eye
  ((require 2htdp/universe 2htdp/image)

; TO-DRAW
(define (create-spinning-eye angle)
  (rotate angle eye))

; The eye sprite
(define eye (overlay/offset (circle 12 "solid" "black") 0 18
                    (circle 30 "outline" "black"))))

(big-bang 0
  (on-tick add1)
  (to-draw create-spinning-eye)))

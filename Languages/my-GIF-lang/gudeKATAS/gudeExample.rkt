#lang racket


(require 2htdp/universe 2htdp/image lang/posn)

; Create a gudetama that rotates on itself atop a yellow background.
(define gudetama-image (rotate 45 (bitmap "gudetama.png")))

(define my-rectangle (rectangle 400 400 "solid" "yellow"))

(define (create-gudetama-scene rotation)
  (place-image (rotate rotation (scale 0.3 (bitmap "gudetama.png")))
               200 200
           my-rectangle))

(big-bang 0
 (on-tick (curry + 100))
  (to-draw create-gudetama-scene))
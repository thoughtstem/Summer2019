#lang racket

(require 2htdp/universe 2htdp/image lang/posn)

(define gudetama-image (rotate 45 (bitmap "gudetama.png")))

(define my-rectangle (rectangle 400 400 "solid" "yellow"))

(define (create-gudetama-scene a)
  (place-image (scale 0.3 (bitmap "gudetama.png"))
               a a
           my-rectangle))

(big-bang 0
 (on-tick (curry + 100))
  (to-draw create-gudetama-scene))
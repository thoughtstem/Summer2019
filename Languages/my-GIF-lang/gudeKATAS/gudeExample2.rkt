#lang racket
(require 2htdp/universe 2htdp/image lang/posn)

;Create a GIF that has 9 gudetamas rotating atop a yellow background.

(define my-rectangle (rectangle 300 300 "solid" "yellow"))

(define my-gudetama (scale 0.2 (bitmap "gudetama.png")))

(define (create-gudetama-scene rotation)
  (place-images (list (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama))
                (list (make-posn 50 50)
                      (make-posn 50 150)
                      (make-posn 50 250)
                      (make-posn 150 50)
                      (make-posn 150 150)
                      (make-posn 150 250)
                      (make-posn 250 50)
                      (make-posn 250 150)
                      (make-posn 250 250))
  my-rectangle))

(big-bang 0
 (on-tick (curry + 3))
  (to-draw create-gudetama-scene))
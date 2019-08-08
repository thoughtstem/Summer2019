#lang racket
(require 2htdp/universe 2htdp/image lang/posn)

;Create a GIF that has a gudetama in a spoon coming in and out of a cup of noodles.

(define my-rectangle (rectangle 300 300 "solid" "yellow"))

(define my-gudetama (scale .15 (bitmap "gudetama.png")))

(define my-cup (scale .3 (bitmap "cupofnoodles.png")))

(define my-spoon (flip-horizontal(scale .3 (bitmap "spoon.png"))))

(define gudetama-and-spoon (overlay/offset my-gudetama -70 -5 my-spoon))

(define (create-gudetama-scene posn) (place-images (list
                      my-cup
                      gudetama-and-spoon)
         (list (make-posn 150 250)
               (make-posn 85 posn))  
  my-rectangle))

(define (my-function x)
  (*(sin (+ x .015)) 200))

(big-bang 0
 (on-tick my-function .5)
  (to-draw create-gudetama-scene))
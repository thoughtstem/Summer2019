#lang racket

(require 2htdp/universe 2htdp/image lang/posn)

;OBJECTIVE: Draw stars in a night sky

;define the golden star shape that accepts size as an input
(define (myStar size)
  (star size 'solid 'gold))

;define 2 lists, one for the shapes that are going to make the night sky and another for their positions
(define pos (list (make-posn 50 50)(make-posn 250 80)(make-posn 100 150)(make-posn 120 50)(make-posn 50 200)))
(define shapesNight (list (circle 40 'solid 'white) (myStar 20) (myStar 30) (myStar 10) (myStar 40)))

;use place-images to place all of the night sky shapes in their respective positions on a midnight blue background 
(define (draw-brush state)
  (place-images shapesNight pos  
               (empty-scene 300 300 "midnight blue" )))

;create the universe and call draw-brush to draw everything
(big-bang 0
  (to-draw draw-brush 300 300))
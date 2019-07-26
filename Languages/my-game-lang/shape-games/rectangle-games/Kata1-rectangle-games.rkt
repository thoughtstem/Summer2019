#lang racket

(require 2htdp/universe 2htdp/image)

;OBJECTIVE: Draw a red rectangle

;A rectangle is drawn at position (100,100) in a 200 by 200 frame.
(define (my-rectangle state)
  (place-image rect 100 100
               (empty-scene 200 200)))

;rect is a function that draws our rectangle.
(define rect
  (rectangle 100 100 'solid 'red) )

;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
;as the first parameter.
(big-bang 0
  (to-draw my-rectangle))
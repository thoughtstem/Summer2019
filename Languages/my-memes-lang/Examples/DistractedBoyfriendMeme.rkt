#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "./assets/Distracted-Boyfriend.png"))


(define ruby (text "Ruby/\nPython" 30 'white))
(define thought (text "ThoughtSTEM" 30 'black))
(define racket (text "Racket" 30 'white))

(define words
  (overlay/offset
   (overlay/offset
    thought
    200 50
    ruby)
    -160 150
   racket))
   


(overlay/offset 
 words
 -40 40
 image)

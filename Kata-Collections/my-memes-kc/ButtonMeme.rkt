#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "assets/Button.png"))


(define button-text (text ")" 36 'white))
(define campers (text "campers" 36 'white))

(define words
  (overlay/offset
   button-text
   200 -100
   campers))


(overlay/offset 
 words
 0 0
 image)

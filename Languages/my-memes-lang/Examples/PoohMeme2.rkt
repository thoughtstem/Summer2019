#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "./assets/Pooh.png"))


(define lame (text "O(n^2)" 36 'black))
(define classy (text "O((n^2)/2)" 36 'black))

(define words
  (overlay/offset
   classy
   0 -200
   lame))


(overlay/offset 
 words
 -150 0
 image)

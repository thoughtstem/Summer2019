#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "assets/Pooh.png"))


(define words1 (text "accidentally deleting a file
and ruining a group project" 36 'black))
(define words2 (text "Merge conflict" 36 'black))

(overlay/offset 
 (overlay/offset
  words1
  -100 250
  words2)
  -200 0
 image)


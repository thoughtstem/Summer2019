#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "./assets/lisa-prez.png"))


(define words (text "The Shrek 2 soundtrack is
\t   better than
lofi beats to study/relax to" 36 'black))


(overlay/offset 
 words
 0 50
 image)
#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "assets/Types-of-Headaches.png"))


(define words (text "GIFs in Racket" 36 'black))

(overlay/offset words -120 -130 image)
 
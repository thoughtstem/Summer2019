#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define (image-from-path path)
  (bitmap/file path))

(define words
  (text "GIFs in Racket" 36 'black))

(overlay/offset words -120 -130
                (image-from-path "./assets/Types-of-Headaches.png"))
 
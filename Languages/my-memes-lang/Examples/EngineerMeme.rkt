#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "./assets/engineer.png"))


(define words (text "When you break the build
but fix it before anyone notices" 24 'black))


(overlay/offset 
 words
 0 150
 image)
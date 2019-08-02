#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (scale 2/3 (bitmap "./assets/obama-award.png")))


(define words (text "Me when I merge my own pull request:" 36 'black))


(overlay/offset 
 words
 30 250
 image)
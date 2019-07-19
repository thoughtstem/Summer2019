#lang fundamentals

(require 2htdp/universe)

(define image (bitmap "./assets/pokemon.gif"))
(define text1 (text "Working as a camp counselor\nfor money" 36 "black"))

(overlay/align "right" "top" text1 (overlay/offset text2 -400 -50 image))
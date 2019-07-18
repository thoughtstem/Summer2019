#lang fundamentals
(require 2htdp/universe)
(define image (bitmap "./assets/Drake.png"))
(define text1 (text "Working as a camp counselor\nfor money" 36 "black"))
(define text2 (text "Working as a camp counselor \nfor coding knowledge" 36 "black"))

(overlay/align "right" "top" text1 (overlay/align "right" "middle" text2 image))
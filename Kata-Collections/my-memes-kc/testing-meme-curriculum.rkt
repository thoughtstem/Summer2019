#lang fundamentals
(require 2htdp/universe)
(define image (bitmap "./assets/Drake.png"))
(define text1 (text "Working as a camp counselor\nfor money" 36 "black"))
(define text2 (text "Working as a camp counselor \nfor coding knowledge" 36 "black"))

(overlay/align "right" "top" text1 (overlay/align "right" "middle" text2 image))


(define headache (bitmap "./assets/Types-of-Headaches.png"))
(define text3 (text/font "WhEn ThEy d0n'T\ncLoSe tHe pArEnThEsEs" 25 "black"
                         "Gill Sans" 'swiss 'normal 'bold #f))

(overlay/offset text3 -120 -120 headache)


#lang fundamentals
(require 2htdp/universe)
;KATA Example #1
(define image (bitmap "./assets/Drake.png"))
(define text1 (text "Working as a camp counselor\nfor money" 36 "black"))
(define text2 (text "Working as a camp counselor \nfor coding knowledge" 36 "black"))

(overlay/align "right" "top" text1 (overlay/align "right" "middle" text2 image))


(define headache (bitmap "./assets/Types-of-Headaches.png"))
(define text3 (text/font "WhEn ThEy d0n'T\ncLoSe tHe pArEnThEsEs" 25 "black"
                         "Gill Sans" 'swiss 'normal 'bold #f))

(overlay/offset text3 -120 -120 headache)


;KATA Example #2

"EASY:"
"Create an image using one of the templates in the assets folder"
(define image (bitmap "./Confused-Anime.png")) 

"MEDIUM:"
"Add text to the image that was created"
 (overlay/offset
 (text "Is this true love?" 30 "white")
 0 -180
 (overlay/offset
 (text "Racket" 30 "white")
 -200 120
 (overlay/offset
 (text "Interns" 30 "white")
 85 70
 image)))

"HARD:"
"Add text, designs, shapes, other images to the image that was created"


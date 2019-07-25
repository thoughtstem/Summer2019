#lang racket

(require ts-kata-util)

;==== Easy ===


;Easy 1: Display the blank Drake.png template (inside the assets folder)

(define-example-code Summer2019/Languages/my-memes-lang/main 001-easy
(define image (bitmap "./assets/Drake.png"))

image)


;Easy 2: Display the Confused-Anime.png template (inside the assets folder)

(define-example-code Summer2019/Languages/my-memes-lang/main 002-easy
(define image2 (bitmap "./assets/Confused-Anime.png"))

image2)


;==== Medium ===
;Add text to the image that was created.


;Medium 1: Add text to the Drake.png template to make it a meme!

(define-example-code Summer2019/Languages/my-memes-lang/main 001-medium
(define image (bitmap "./assets/Drake.png"))
(define text1 (text "Working as a camp counselor\nfor money" 36 "black"))
(define text2 (text "Working as a camp counselor \nfor coding knowledge" 36 "black"))

(overlay/align "right" "top" text1 (overlay/align "right" "middle" text2 image))

(define headache (bitmap "./assets/Types-of-Headaches.png"))
(define text3 (text/font "WhEn ThEy d0n'T\ncLoSe tHe pArEnThEsEs" 25 "black"
                         "Gill Sans" 'swiss 'normal 'bold #f))

(overlay/offset text3 -120 -120 headache))


;Medium 2: Add text to the Confused-Anime template to make it a meme!

(define-example-code Summer2019/Languages/my-memes-lang/main 002-medium
(define image2 (bitmap "./assets/Confused-Anime.png"))

(overlay/offset
 (text "Is this true love?" 30 "white")
 0 -180
 (overlay/offset
  (text "Racket" 30 "white")
  -200 120
  (overlay/offset
   (text "Interns" 30 "white")
   85 70
   image2))))


;==== Hard  ===
;Add text, designs, shapes, other images to the image that was created


;Hard 1: Add an image of interns, the racket-logo, and text, to a blank meme
;template.

(define-example-code Summer2019/Languages/my-memes-lang/main 001-hard
(define image2 (bitmap "./assets/Confused-Anime.png"))

(define racket-logo
  (scale 0.1 (bitmap "./assets/racket-logo.png")))

(define interns
  (scale 0.05 (bitmap "./assets/intern-collage.png")))

(overlay/offset
 (text "Is this true love?" 30 "white")
 0 -180
 (overlay/offset
  racket-logo
  -210 120
  (overlay/offset
   interns
   85 70
   image2))))

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

;Easy 3: Display the Pooh.png template (inside the assets folder)
(define-example-code Summer2019/Languages/my-memes-lang/main 003-easy
(define image3 (bitmap "./assets/Pooh.png"))

  image3)
  
;Easy 4: Display the Button.png template (inside the assets folder)
(define-example-code Summer2019/Languages/my-memes-lang/main 004-easy
(define image4 (bitmap "./assets/Button.png"))

  image4)

;Easy 5: Display the Distracted-Boyfriend.png template (inside the assets folder)
(define-example-code Summer2019/Languages/my-memes-lang/main 005-easy
(define image4 (bitmap "./assets/Distracted-Boyfriend.png"))

 image5)

;Easy 6: Display the Types-of-Headaches.png template (inside the assets folder)
(define-example-code Summer2019/Languages/my-memes-lang/main 006-easy
(define image4 (bitmap "./assets/Types-of-Headaches.png"))

  image6)

;Easy 7: Display the Surprised-Pikachu.png template (inside the assets folder)
(define-example-code Summer2019/Languages/my-memes-lang/main 007easy
(define image7 (bitmap "./assets/Surprised-Pikachu.png"))

image7)


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
   
   
;Medium 3: Make a Pooh meme. Add text in the white space next to each Pooh image in the meme.

(define-example-code Summer2019/Languages/my-memes-lang/main 003-medium

  ;To get the background image of the Pooh meme.
  (define image (bitmap "./assets/Pooh.png"))

  ;To create the text that will go next to the top Pooh picture.
  (define words1 (text "accidentally deleting a file
and ruining a group project" 36 'black))

  ;To create the text that will go next to the bottom Pooh picture.
  (define words2 (text "Merge conflict" 36 'black))

  ;To put the text on the meme image.
  (overlay/offset
   (overlay/offset
    words1
    -100 250
    words2)
   -200 0
   image))


;Medium 4: Make a button meme. Put text over the button, as well as text over the moving hand.

(define-example-code Summer2019/Languages/my-memes-lang/main 004-medium
  
  ;To get the background button picture.
  (define image (bitmap "./assets/Button.png"))

  ;To create the text that belongs on top of the button.
  (define button-text (text ")" 36 'white))

  ;To create the text that belongs on top of the hand.
  (define campers (text "campers" 36 'white))

  ;To group the words together and position them.
  (define words
    (overlay/offset
     button-text
     200 -100
     campers))

  ;To place the words on top of the button picture.
  (overlay/offset
   words
   0 0
   image))
   
   
;Medium 5: Make a distracted boyfriend meme. Put text over the girlfriend, the boyfriend, and the new girl.

(define-example-code Summer2019/Languages/my-memes-lang/main 005-medium
  
  ;To get the Distracted Boyfriend meme image.
  (define image (bitmap "./assets/Distracted-Boyfriend.png"))

  ;To create the text that will go over the girlfriend.
  (define ruby (text "Ruby/\nPython" 30 'white))

  ;To create the text that will go pver the boyfriend.
  (define thought (text "ThoughtSTEM" 30 'black))

  ;To create the text that will go over the new girl.
  (define racket (text "Racket" 30 'white))

  ;To group the text in their right positions.
  (define words
    (overlay/offset
     (overlay/offset
      thought
      200 50
      ruby)
     -160 150
     racket))

  ;To place the text on the image.
  (overlay/offset
   words
   -40 40
   image))


;Medium 6: Make a Headache meme. Add text below the image of the full head headache.

(define-example-code Summer2019/Languages/my-memes-lang/main 006-medium

  ;Creating the function that will pull the background image for us.
  (define (image-from-path path)
    (bitmap/file path))

  ;Creating the words to go under the full head headache.
  (define words
    (text "GIFs in Racket" 36 'black))

  ;Putting the words over the headache meme image.
  (overlay/offset words -120 -130
                  (image-from-path "./assets/Types-of-Headaches.png")))
                  
  
;Medium 7: Make a Pikachu meme. Add text to the white space above the meme image.

(define-example-code Summer2019/Languages/my-memes-lang/main 007-medium
  
  ;To get the background pikachu image.
  (define image (bitmap "./assets/Surprised-Pikachu.png"))

  ;To create the text that will go on the meme.
  (define words (text "Student: *applies for unpaid internship*
Student: *is unpaid*
Student:" 36 'black))

  ;To place the text on the background image.
  (overlay/offset
   words
   10 120
   image))


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


;Hard 2: Add an image of interns and text to a blank meme template.

(define-example-code Summer2019/Languages/my-memes-lang/main 002-hard
(define image2 (bitmap "Me-Explaining.png"))

(define text1
  (text "Stephen explaining the difference \n between purists and pragmatists" 25 "black"))

(define interns
  (scale 0.05 (bitmap "intern-collage.png")))

 (overlay/offset
  text1
  200 80
  (overlay/offset
   interns
   -300 50
   image2)))



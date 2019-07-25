#lang racket

(require ts-kata-util)

#;
(require 2htdp/universe
         2htdp/image)

;=== Button Meme ===

;Kata1: Make a button meme. Put text over the button, as well as text over the moving hand.

(define-example-code Summer2019/Languages/my-memes-lang/main 001-button-meme
  
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


;=== Distracted Boyfriend Meme ===
  
;Kata2: Make a distracted boyfriend meme. Put text over the girlfriend, the boyfriend, and the new girl.

(define-example-code Summer2019/Languages/my-memes-lang/main 002-distracted-boyfriend-meme
  
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

  
;=== Headache Meme ===
  
;Kata3: Make a Headache meme. Add text below the image of the full head headache.

(define-example-code Summer2019/Languages/my-memes-lang/main 003-headache-meme

  ;Creating the function that will pull the background image for us.
  (define (image-from-path path)
    (bitmap/file path))

  ;Creating the words to go under the full head headache.
  (define words
    (text "GIFs in Racket" 36 'black))

  ;Putting the words over the headache meme image.
  (overlay/offset words -120 -130
                  (image-from-path "./assets/Types-of-Headaches.png")))

  
;=== Pikachu Meme ===
  
;Kata4: Make a Pikachu meme. Add text to the white space above the meme image.

(define-example-code Summer2019/Languages/my-memes-lang/main 004-pikachu-meme
  
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


;=== Pooh Meme ===
  
;Kata5: Make a Pooh meme. Add text in the white space next to each Pooh image in the meme.

(define-example-code Summer2019/Languages/my-memes-lang/main 005-pooh-meme

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


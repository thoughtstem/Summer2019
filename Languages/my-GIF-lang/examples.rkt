#lang racket

(require ts-kata-util)

;(require 2htdp/universe)

; === World GIF ===

;Kata1: Create the function that will iterate through the file paths in order to make
;the world look as if it is spinning.

(define-example-code Summer2019/Languages/my-GIF-lang/main 001-easy 

  (define (make-file-path number)
  ((compose (curryr string-append ".png") ;concatenates the string to be the file path,
            (curry string-append "./assets/world/") ~a) (modulo number 7)))  ;modulo iterates through each number 0-43, ~a converts to string
(make-file-path))

;Kata2: Create the function that places text over the background image.

(define-example-code Summer2019/Languages/my-GIF-lang/main 001-medium

  (define (make-file-path number)
    ((compose (curryr string-append ".png")
              (curry string-append "./assets/world/") ~a) (modulo number 7)))

  (define (make-images num)
    (overlay
     (text "Hello" 100 "red") ;replace with the text you want
     (bitmap/file (make-file-path num)))) ;creates a bitmap of the file path
  
  (make-images))

;Kata3: Write the code that puts it all together (iterating through the images while keeping the text).

(define-example-code Summer2019/Languages/my-GIF-lang/main 001-hard

  (define (make-file-path number)
  ((compose (curryr string-append ".png")
            (curry string-append "./assets/world/") ~a) (modulo number 7)))

  (define (make-images num)
  (overlay
     (text "Hello" 100 "red") ;replace with the text you want
     (bitmap/file (make-file-path num))))

   (big-bang 0
 (on-tick add1)
  (to-draw make-images))) ;every tick of big-bang draws the next image

;(require 2htdp/universe 2htdp/image lang/posn)
;=== Gudetama GIF ====

;Kata1: Create a gudetama that rotates on itself atop a yellow background.
(define-example-code Summer2019/Languages/my-GIF-lang/main gudetama-001

(define my-rectangle (rectangle 400 400 "solid" "yellow"))

(define (create-gudetama-scene rotation)
  (place-image (rotate rotation (scale 0.3 (bitmap "gudetama.png")))
               200 200
           my-rectangle))

(big-bang 0
 (on-tick (curry + 20))
  (to-draw create-gudetama-scene)))

;Kata2: Create a GIF that has 9 gudetamas rotating atop a yellow background.
(define-example-code Summer2019/Languages/my-GIF-lang/main gudetama-002
  (define my-rectangle (rectangle 300 300 "solid" "yellow"))

(define my-gudetama (scale 0.2 (bitmap "gudetama.png")))

(define (create-gudetama-scene rotation)
  (place-images (list (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama)
                      (rotate rotation my-gudetama))
                (list (make-posn 50 50)
                      (make-posn 50 150)
                      (make-posn 50 250)
                      (make-posn 150 50)
                      (make-posn 150 150)
                      (make-posn 150 250)
                      (make-posn 250 50)
                      (make-posn 250 150)
                      (make-posn 250 250))
  my-rectangle))

(big-bang 0
 (on-tick (curry + 3))
  (to-draw create-gudetama-scene)))

;Kata 3: Create a GIF that has a gudetama in a spoon coming in and out of a cup of noodles.
;HINT: Use a sin function so that the gudetama moves in an up and down motion.

(define-example-code Summer2019/Languages/my-GIF-lang/main gudetama-003
  (define my-rectangle (rectangle 300 300 "solid" "yellow"))

(define my-gudetama (scale .15 (bitmap "gudetama.png")))

(define my-cup (scale .3 (bitmap "cupofnoodles.png")))

(define my-spoon (flip-horizontal(scale .3 (bitmap "spoon.png"))))

(define gudetama-and-spoon (overlay/offset my-gudetama -70 -5 my-spoon))

(define (create-gudetama-scene posn) (place-images (list
                      my-cup
                      gudetama-and-spoon)
         (list (make-posn 150 250)
               (make-posn 85 posn))  
  my-rectangle))

(define (my-function x)
  (*(sin (+ x .015)) 200))

(big-bang 0
 (on-tick my-function .5)
  (to-draw create-gudetama-scene)))

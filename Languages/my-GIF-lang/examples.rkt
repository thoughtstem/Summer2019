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

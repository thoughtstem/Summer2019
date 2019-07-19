#lang fundamentals (require 2htdp/universe)

(define (make-file-path number)
  ((compose (curryr string-append ".png") ;concatenates the string to be the file path,
            (curry string-append "./assets/world") ~a) (modulo number 7)))  ;modulo iterates through each number 0-43, ~a converts to string

(define (make-images num)
  (overlay
     (text "Hello" 100 "red") ;replace with the text you want
     (bitmap/file (make-file-path num)) ;creates a bitmap of the file path
  )
)
 
(big-bang 0
 (on-tick add1)
  (to-draw make-images)) ;every tick of big-bang draws the next image
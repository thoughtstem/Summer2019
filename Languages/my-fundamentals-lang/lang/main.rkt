#lang at-exp racket

(provide face)
(provide image-from-path)
(provide make-file-path)

(require 2htdp/universe)
(require scribble/srcdoc)
(require (for-doc racket/base scribble/manual ))

(require ts-kata-util
         "../assets.rkt"
         2htdp/image ;You'll probably delete this.
         ;If skinning a language, require that here
         )

(define (face)
  (define eye (circle 20 'solid 'black))
  (define mouth (rectangle 50 20 'solid 'black))
  (above
    (beside eye eye) 
    mouth ))

;----FILE PATH FUNCTIONS----

(define (image-from-path path) (bitmap/file path)) ;creates an image from a path. requires a file path as an argument
;example of call: (image-from-path "./assets/example.png"

(define (make-file-path directory index num-images type) ;concatenates string constants and index to create a string for
  ((compose (curryr string-append type)                  ;the file path
            (curry string-append directory) ~a) 
   (modulo index num-images)))
;example of call: (make-file-path "./assets/example/" index 44 ".png")

;----GIF FUNCTIONS----

(define (run-gif gif) ;argument requires a function that creates an array of images from the function (make-file-path)
  (big-bang 0
    (on-tick add1)
    (to-draw gif)))
#lang at-exp racket

(provide face)

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
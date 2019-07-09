#lang at-exp racket

(require scribble/srcdoc)
(require (for-doc racket/base scribble/manual ))

(require ts-kata-util
         "../assets.rkt"
         2htdp/image ;You'll probably delete this.
         ;If skinning a language, require that here
         )

(define/contract/doc (custom-circle #:color (color "red"))
  (->i () (#:color [color string?]) (result image?))
  @{This returns a fixed-size red circle.  But you can customize the color.}
  (circle 40 'solid color))

#lang at-exp racket

(provide hello-world)

(require scribble/srcdoc)
(require (for-doc racket/base scribble/manual ))

(require ts-kata-util
         "../assets.rkt")

(define (hello-world)
  "Hello world")

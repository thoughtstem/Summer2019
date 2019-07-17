#lang scribble/manual
@(require "common.rkt"
          2htdp/image)

@(bio "Drew Keirn"
      "drew-keirn.jpg"
      "I'm a sophomore in computer science at Purdue and I like Batman.")

@(define (circle-part)
   (overlay
      (circle 28 "solid" "white")
      (circle 50 "solid" (make-color 56 176 72))))

@(define (top-bottom-thingies)
  (overlay
   (rectangle 100 75 "solid" "white")
   (rectangle 100 120 "solid" (make-color 56 176 72))))

@(define (outline)
  (circle 82 "outline" (make-color 56 176 72)))
   
@(overlay
   (overlay
   (circle-part)
   (top-bottom-thingies))
   (outline))

@codeblock{(define (circle-part)
   (overlay
      (circle 28 "solid" "white")
      (circle 50 "solid" (make-color 56 176 72))))

(define (top-bottom-thingies)
  (overlay
   (rectangle 100 75 "solid" "white")
   (rectangle 100 120 "solid" (make-color 56 176 72))))

(define (outline)
  (circle 82 "outline" (make-color 56 176 72)))
   
(overlay
   (overlay
   (circle-part)
   (top-bottom-thingies))
   (outline))}
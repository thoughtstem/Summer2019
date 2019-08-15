#lang racket

(require ts-kata-util)

;Add virtual reality katas in this file. Format:
; (define-example-code Summer2019/Languages/my-vr-lang/main identifier
;			[YOUR CODE]) 

;==== VR Examples

;VR Beginner Examples
(define-example-code Summer2019/Languages/my-vr-lang/main shapes~box-001
 
  (define my-scene
    (scene
 
     (box
      (position -1 0.5 -3)
      (rotation 0 45 0)
      (color 76 195 217 255))
 
     (sky (color 0 0 0 0))))
 
  (send-to-browser my-scene))
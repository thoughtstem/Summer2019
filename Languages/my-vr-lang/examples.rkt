#lang racket

(require ts-kata-util)

;Add virtual reality katas in this file. Format:
; (define-example-code Summer2019/Languages/my-vr-lang/main identifier
;			[YOUR CODE]) 

;==== VR Examples

;VR Beginner Examples

;Write a function that produces a blue box on a black background.
(define-example-code Summer2019/Languages/my-vr-lang/main shapes~box-001
 
  (define my-scene
    (scene
 
     (box
      (position -1 0.5 -3)
      (rotation 0 45 0)
      (color 76 195 217 255))
 
     (sky (color 0 0 0 0))))
 
  (send-to-browser my-scene))

;Create a scene with a white sphere on a light blue background.
(define-example-code Summer2019/Languages/my-vr-lang/main shapes~snowman-001
  
  (define (my-sphere)
    (sphere
     (position -2 0.5 -12)
     (color 255 255 255 255)
     (radius 2.5)))

  (define my-scene
    (scene
 
     (my-sphere)
 
     (sky (color 102 178 255 170))))
 
  (send-to-browser my-scene))

;Create a scene with a snowman on a light blue background.
(define-example-code Summer2019/Languages/my-vr-lang/main shapes~snowman-002

  (define (my-snowman n)
    (sphere
     (position -2 (- (* n 2.5) 2) -12)
     (color 255 255 255 255)
     (radius (- 3 (* 0.50 n)))))
 
  (define my-scene
    (scene
 
     (my-snowman 1)
     (my-snowman 2)
     (my-snowman 3)

     (sky (color 102 178 255 170))))
 
  (send-to-browser my-scene))

;Create a scene with a snowman and tree on a light blue background.
(define-example-code Summer2019/Languages/my-vr-lang/main shapes~snowman-003
 
  (define (my-snowman n)
    (sphere
     (position -2 (- (* n 2.5) 2) -12)
     (color 255 255 255 255)
     (radius (- 3 (* 0.50 n)))))

  (define (my-tree n)
    (cone
     (position -16 (- (* n 4) 2) -16)
     (color 0 255 0 255)
     (radius-bottom (- 4 (* 0.50 n)))
     (height 6)))

  (define (my-trunk)
    (cylinder
     (position -16 -1 -16)
     (color 153 76 0)
     (radius 1)
     (height 4)))
 
  (define my-scene
    (scene
 
     (my-snowman 1)
     (my-snowman 2)
     (my-snowman 3)

     (my-tree 1)
     (my-tree 2)
     (my-tree 3)
     (my-trunk)
 
     (sky (color 102 178 255 170))))
 
  (send-to-browser my-scene))

;Create a scene with a snowman and tree on a light blue background with snow.
(define-example-code Summer2019/Languages/my-vr-lang/main shapes~snowman-004
  
  ;Here we declare the star-system component
  (register-remote-component star-system "https://cdn.rawgit.com/matthewbryancurtis/aframe-star-system-component/db4f1030/index.js")
 
 
  (define (my-snowman n)
    (sphere
     (position -2 (- (* n 2.5) 2) -12)
     (color 255 255 255 255)
     (radius (- 3 (* 0.50 n)))))

  (define (my-tree n)
    (cone
     (position -16 (- (* n 4) 2) -16)
     (color 0 255 0 255)
     (radius-bottom (- 4 (* 0.50 n)))
     (height 6)))

  (define (my-trunk)
    (cylinder
     (position -16 -1 -16)
     (color 153 76 0)
     (radius 1)
     (height 4)))
 
  (define my-scene
    (scene
 
     (my-snowman 1)
     (my-snowman 2)
     (my-snowman 3)

     (my-tree 1)
     (my-tree 2)
     (my-tree 3)
     (my-trunk)

     (basic (star-system (hash "count" 1000
                               "radius" 40
                               "depth" 0
                               "texture" (h:circle 10 "solid" "white"))))
     ;Note the h: prefix on 2htdp/image functions
 
     (sky (color 102 178 255 170))))
 
  (send-to-browser my-scene))
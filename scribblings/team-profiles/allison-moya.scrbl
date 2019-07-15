#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@(bio "Allison Moya"
      "allison-moya.jpg"
      "Hi my name is Allison. I am a senior at Academy of Our Lady of Peace.")
@(define (ear color)
   (ellipse 30 80 "solid" color))
@(define (limb color)
   (ellipse 50 15 "solid" color))
@(define (eye)
   (circle 10 "solid" "black"))
@(define (head color)
   (add-curve
    (overlay/offset (circle 10 "solid" "pink")
                    0 -40
                    (overlay/offset(overlay/offset (ear color)
                                                   20 70
                                                   (overlay/offset(eye)
                                                                  -20 10
                                                                  (overlay/offset
                                                                   (eye)
                                                                   20 10
                                                                   (circle 50 "solid" color))))
                                   20 -40
                                   (ear color)
                                   ))
    35 130 50 -0.5
    70 130 50 1
    "black")
   )

@(define (bunny color)
   (overlay/offset
    (overlay/offset
     (overlay/offset
      (overlay/offset
       (overlay/offset
        (head color)
        0 100
        (ellipse 60 100 "solid" color))
       30 50
       (limb color))
      -30 50
      (limb color))
     30 110
     (limb color))
    -30 110
    (limb color)))
@blog{

      @blog-post["Day 20"]{
                           Today I created my team profile
 This is how to add two bunnies, one that is green and one that is gray! :)
 @(beside (bunny "gray") (bunny "green"))
 @codeblock{
(define (ear color)
  (ellipse 30 80 "solid" color))
(define (limb color)
  (ellipse 50 15 "solid" color))
(define (eye)
  (circle 10 "solid" "black"))
(define (head color)
  (add-curve
   (overlay/offset (circle 10 "solid" "pink")
                   0 -40
                   (overlay/offset(overlay/offset (ear color)
                                                  20 70
                                                  (overlay/offset(eye)
                                                                 -20 10
                                                                 (overlay/offset
                                                                  (eye)
                                                                  20 10
                                                                  (circle 50 "solid" color))))
                                  20 -40
                                  (ear color)
                                  ))
   35 130 50 -0.5
   70 130 50 1
   "black")
  )

(define (bunny color)
  (overlay/offset
   (overlay/offset
    (overlay/offset
     (overlay/offset
      (overlay/offset
       (head color)
       0 100
       (ellipse 60 100 "solid" color))
      30 50
      (limb color))
     -30 50
     (limb color))
    30 110
    (limb color))
   -30 110
   (limb color)))

(beside (bunny "gray") (bunny "green"))}}
}
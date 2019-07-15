#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@require[@for-label[Summer2019
                    racket/base]]

@(define face (circle 100 "solid" "gold"))
@(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
@(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))

@(bio "Andres Ortiz"
      "andres-ortiz.png"
      "I attend the University of California, Davis. I am a third-year computer engineering major.")

@blog{

@blog-post["Personal Philosophy"]{
                                  "I strive towards becoming a software developer. It has always been a dream of mine."}

@blog-post["Day 1"]{
                    "Today I implemented my bio into the team files. We created a new kata for children to be able to recreate. The new kata involves creating a rolling-eye emoji similar to the one found in iPhones."

@codeblock{(define face (circle 100 "solid" "gold"))
(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))
(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))}

@(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))
}}
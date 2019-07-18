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

@blog{
  @blog-post["2htdp/image (6/15/19)"]{
   Today I learned how to create images using the 2htdp/image library. Below is the first image I created, the Green Lantern.
  }
}

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

@blog{
 @blog-post["Intro to Software Engineering (6/16/19)"]{
  Today was my introduction to software engineering. Coding is the first step to software engineering,
  but it is not as important as communication or collaboration.
 }
 @blog-post["Software Engineering Management (6/17/19)"]{
  Today I dove more into the management side of things. I practiced delegating tasks to other engineers
  to maximize efficiency on a project. Also, it helps teach others how tasks are to be accomplished in the future.
 }
 @blog-post["Using Functional Programming for Data Science (6/18/19)"]{
  Today I explored the applications of Racket regarding data science. Specifically, I began teaching myself
  Racket's "plot" library to make graphs.
 }
}
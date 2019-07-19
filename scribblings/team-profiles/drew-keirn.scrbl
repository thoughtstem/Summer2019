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
  @blog-post["Day 1 - 2htdp/image (7/15/19)"]{
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
 @blog-post["Day 2 - Intro to Software Engineering (7/16/19)"]{
  Today was my introduction to software engineering. Coding is the first step to software engineering,
  but it is not as important as communication or collaboration.
 }
 @blog-post["Day 3 - Software Engineering Management (7/17/19)"]{
  Today I dove more into the management side of things. I practiced delegating tasks to other engineers
  to maximize efficiency on a project. Also, it helps teach others how tasks are to be accomplished in the future.
 }
 @blog-post["Day 4 - Using Functional Programming for Data Science (7/18/19)"]{
  Today I explored the applications of Racket regarding data science. Specifically, I began teaching myself
  Racket's "plot" library to make graphs.
 }
 @blog-post["Day 5 - More Software Engineering Management (7/19/19)"]{
  Today we continued to assign tasks to the other engineers to contribute to the project.
  I created tickets for the specific tasks that I wanted to get done short-term.
 }
}
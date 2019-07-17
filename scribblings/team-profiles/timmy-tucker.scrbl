#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt"
          2htdp/image
          lang/posn)

@(bio "Timothy Tucker"
      "timothy-tucker.jpg"
      "Hello, my name is Timothy but everyone calls me Timmy. I am 17 years old and I go to Bonita Vista High School in Chula Vista. The End." )

@blog{

 @blog-post["Distributed Cognition - 06/17/19"]{
  Today we learned about distributed cognition, which was referred to as DCog. Distributed cognition is the idea that the mind and its cognition is not limited to the body, and is extended to the surrounding environment. One thought experiment that helped us understand this concept was about two people going to a museum, which can be found in the second paragraph of
  @hyperlink["https://en.wikipedia.org/wiki/The_Extended_Mind"]{this}
  Wikipedia article. In this example, Otto operates by distributing his cognitive load, while Inga chooses to operate all within her physical mind.
 }

 @blog-post["Recognition vs Recall - 06/18/19"]{
  Talked about the distinction between recognition and recall. Recognition is a more shallow understanding of a concept while recall requires a deeper understanding. We discussed this concept in terms of language specifically how the English language has subsets that require futher fluency.
 }


 @blog-post["Broca's Area - 06/19/19"]{
  After working more on our blogs and using racket functions to uniformly organize our ideas together, we discusses Broca's area. This is a region of the brain named after Pierre Paul Broca. In the 1800s, Broca had a patient who was
  terminally ill and also was experiencing an inability to produce language. After the patient passed, Broca discovered damage to the specific area of the brain that later became Broca's area. Today, we know this area plays a major role
  in language production and comprehension as a whole, however scientists still debate its exact role in how we interact with language.
}

 @blog-post["New Tactic - Code Anatomy Race - 06/20/19"]{

@(tactic->scribble
  (code-anatomy-race 'Coach
                     'Team
                     'Team-Computers
                     'both-challenge-cards
                     'both-whiteboards
                     'the-markers))

This is a new tactic that our group developed, which essentially loops the code-anatomy tactic process so that two teams can compete to complete the tactic head-to-head.
} 


@blog-post["Live AMA with Stephen - 06/21/19"]{
Today Stephen had us write down questions that we had for him, especially related to the field of computer science from both an academic and professional standpoint. Having an hour where we were able to listen to an expert in the field
discuss its current state and provide value information as future workers was extremely eye-opening and enlightening. I think that while many people could find a plethora of information regarding what languages are popular and where the
demand is in the workforce, the opportunity to listen to the philosophies that Stephen holds seems much more valuable. Instead of trying to find extremely specific answers to specific questions, I can now use these words of wisdom to
guide my journey overall in computer science.
}

@blog-post["2htdp/image"]{
Today we explored a new library used to generate images and create different shapes.
Below is the code we developed to create a PokeBall.}}

@(define (latch)
  (overlay
   (overlay
    (overlay
     (circle 10 "outline" "black")
     (circle 15 "outline" "black"))
    (circle 15 "solid" "white"))
   (rectangle 100 5 "solid" "black")))

@(define (red-half)
 (circle 50 "solid" "red"))

@(define (white-half)
    (overlay/offset
      (circle 50 "outline" "black")
     0 25
     (rectangle 100 50 "solid" "white")))

@(overlay
(overlay
 (latch)
 (white-half))
(red-half))

@codeblock{(define (latch)
  (overlay
   (overlay
    (overlay
     (circle 10 "outline" "black")
     (circle 15 "outline" "black"))
    (circle 15 "solid" "white"))
   (rectangle 100 5 "solid" "black")))

(define (red-half)
 (circle 50 "solid" "red"))

(define (white-half)
    (overlay/offset
      (circle 50 "outline" "black")
     0 25
     (rectangle 100 50 "solid" "white")))

(overlay
(overlay
 (latch)
 (white-half))
(red-half))}


Below is my code for a rotating, moving, flashing pokeball image.

@codeblock{
#lang fundamentals

(require 2htdp/universe)

(define (pokeball color)
  (underlay
  (underlay
   (underlay
    (underlay
     (underlay
      (underlay/offset
       (circle 100 'solid 'red)
       0 50
       (rectangle 200 100 'solid 'white))
      (circle 100 'outline color))
     (rectangle 200 10 'solid color))
    (circle 30 'solid 'white))
    (circle 30 'outline color))
   (circle 15 'outline color)))

(define (pokeball-change x)
  (place-image
  (rotate x (pokeball (find-color x)))
  (calc x) 250
  (empty-scene 500 500)))

(define (calc x)
  (+ 125 (* 125 (sin (/ x 10))) 125))

(define (find-color tick)
  (if (< (modulo tick 10) 5) 'green 'blue))

(big-bang 0
     (on-tick add1)
     (to-draw pokeball-change))
}

Below is my code for a scalable arrow image using 2htdp/image.

@codeblock{
#lang fundamentals

(define (arrow width height color)
  (overlay/offset
   (rotate 180 (triangle/sss (expt (+ (expt (/ height 5) 2) (expt (/ width 2) 2)) 0.5) (expt (+ (expt (/ height 5) 2) (expt (/ width 2) 2)) 0.5) width 'solid color))
   0 (* 2 (/ height 5))
   (rectangle (/ width 4) (* 4 (/ height 5)) 'solid color)))

(arrow 50 100 'blue)
           }

Below is my code for text smoothly changing color quickly.

@codeblock{
#lang fundamentals

(require 2htdp/universe)

(define (trippy-text tick)
  (text "uwu" 100 (getcolor tick)))

(define (getcolor tick)
  (make-color (csin tick 5) (csin tick 4) (csin tick 3)))

(define (csin tick inc)
  (inexact->exact (round (+ 128 (* 127 (sin (/ tick inc)))))))

(big-bang 0
  (on-tick add1)
  (to-draw trippy-text))
}

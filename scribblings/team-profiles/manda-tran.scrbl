#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt"
          2htdp/image)

@(bio "Manda Tran"
      "manda-tran.jpg"
      "Hi my name is Manda. I am going into my third year at UCSD
 as a Cognitive Science with Machine Learning major.")


@(define body
  (rectangle 140 70 "solid" "teal"))

@(define beak
  (ellipse 50 20 "solid" "orange"))

@(define front-feet
  (overlay/align "right" "bottom"
         (ellipse 30 15 "solid" "orange")
          (rotate 180 (isosceles-triangle  40 30 "solid" "teal"))))

@(define eyes
  (overlay/offset (ellipse 12 10 "solid" "black")
                  5 0
                  (ellipse 30 20 "solid" "white")))

@(define tail
  (rectangle 70 35 "solid" "orange"))

@(define platypus
(underlay/offset tail -90 10(overlay/offset beak 75 10
       (overlay/offset eyes 50 30 (above/align "left" body
       (beside front-feet front-feet front-feet front-feet))))))

@blog{

 @blog-post["Day 1"]{
  Distributed Cognition - 06/17/19

  Discussed the definition of distributed cognition as the mind not being limited to the individual.
  It includes utilizing resources from the environment (artifacts and other people).
  Distributed Cognition counters the traditional view that the mind is contained in the body.
  This article can be found @hyperlink{https://en.wikipedia.org/wiki/Distributed_cognition
   here}.

  @bold{Chinese Room}

  As an example of distributed cognition we researched the Chinese Room experiment. Information about this
  can be found @hyperlink{https://www.iep.utm.edu/chineser/
   here}.
 }

 @blog-post["Day 2"]{
  Recognition vs Recall - 06/18/19
  Talked about the distinction between recognition and recall. Recognition is a more shallow understanding of a concept while recall requires a deeper understanding. We discussed this concept in terms of language specifically how the English language has subsets that require futher fluency.
 }

 @blog-post["Day 3"]{
  Refactoring/Broca's Region/fMRI studies - 06/19/19

  Broca's Region is much more than just the language processing area of the brain. It also deals with language comprehension and even
  muscle movements. One of the things that I found particularly interesting was the Shadow Puppets and Broca's Region experiment in which
  people studied fMRI scans of people viewing shadow puppets. This showed that Broca's Region was active, and probably has to do with human
  gesturing being included in a form of communication and the fact that mirror neurons have been found in Broca's Region.

 }

 @blog-post["Day 4"]{
  New Tactic Code Anatomy Race- 06/20/19

  @(tactic->scribble
    (code-anatomy-race 'Coach
                       'Team
                       'Team-Computers
                       'both-challenge-cards
                       'both-whiteboards
                       'the-markers))
 }

 @blog-post["Day 5"]{
  Ask Me Anything day with Stephen - 06/21/19

  Talked about the differences between startups and big companies as well as useful skills to
  have in the industry (referenced ThoughSTEM Assessments Handbook). Also discussed a variety of languages and programming paradigms.

  Worked on and completed out New Tactic developed in Day 4.
 }

 @blog-post["Day 10"]{

  Talked about pair programming and made our own examples for map, apply, and curry
  ("the power tools of functional programming").
 }

 @blog-post["Day 11"]{

  Demo and practiced pull requests and finalized our examples from Day 10.

  @bold{Example 1} Rotating an Ellipse
  @codeblock{
   #lang racket
   (require pict)

   (rotate (ellipse 40 80) 10)
  }
  
  @bold{Example 2} Rotating a list of Ellipses
  @codeblock{
   #lang racket
   (require pict)

   (map (curry rotate (ellipse 40 80))(range 0 120 10))
  }
  
  @bold{Example 3} Superimposing all the rotated Ellipses
  @codeblock{
   #lang racket
   (require pict)

   (apply cc-superimpose
       (map (curry rotate (ellipse 40 80))(range 0 120 10)))
  }

  @bold{Example 4} Changing all letters in a list of strings to uppercase
  @codeblock{
   #lang racket
   (map string-upcase '("asdfjk" "eijkdf"))
  }

  @bold{Example 5} Appending the list of uppercase strings together
  @codeblock{
   #lang racket
   (apply string-append
      (map string-upcase '("asdfjk" "eijkdf")))
  }
 }

 @blog-post["Day 12"]{
                    
  @bold{Example 6}
  Create a list of alternating boolean statements.
  @codeblock{       
  #lang racket
  
  (define nums (range 20))
  (define bools (map even? nums))
  bools
  }
  
  @bold{Example 7}
  Create a  list of alternating colors.
  @codeblock{       
  #lang racket
  (require pict)
  
  (define nums (range 20))
  (define bools (map even? nums))
  (define (bools->color b)
     (if b "salmon" "midnight blue"))
  (define colors
     (map
        bools->color
        bools))
  colors    
  }
  
  @bold{Example 8}
  Create a list of color-alternating angel wings.
  @codeblock{       
  #lang racket
  (require pict)
  
  (define nums (range 20))
  (define bools (map even? nums))
  (define (bools->color b)
     (if b "salmon" "midnight blue"))
  (define colors
     (map
        bools->color
        bools))
  (map (curry colorize (angel-wing 20 40 #f)) colors)
  }                   
  }
 @blog-post["Day 20"]{
 @bold{Cat Example}
  }
 @blog-post["Day 21"]{
   Created new examples using the 2htdp/image library.

   @bold{Platypus example}
   
   @(underlay/offset tail -90 10(overlay/offset beak 75 10
       (overlay/offset eyes 50 30 (above/align "left" body
       (beside front-feet front-feet front-feet front-feet)))))
   
   @codeblock{
(define body
  (rectangle 140 70 "solid" "teal"))

(define beak
  (ellipse 50 20 "solid" "orange"))

(define front-feet
  (overlay/align "right" "bottom"
         (ellipse 30 15 "solid" "orange")
          (rotate 180 (isosceles-triangle  40 30 "solid" "teal"))))

(define eyes
  (overlay/offset (ellipse 12 10 "solid" "black")
                  5 0
                  (ellipse 30 20 "solid" "white")))

(define tail
  (rectangle 70 35 "solid" "orange"))

(define platypus
(underlay/offset tail -90 10(overlay/offset beak 75 10
       (overlay/offset eyes 50 30 (above/align "left" body
       (beside front-feet front-feet front-feet front-feet))))))

platypus
  }

   @bold{Christmas tree example}
   @codeblock{
  #lang fundamentals
              
  (above(star 40 "solid" "yellow")
      (triangle 50 "solid" "green")
      (triangle 100 "solid" "green")
      (triangle 150 "solid" "green"))
  }

   @bold{Cheese example}
   @codeblock{
    #lang fundamentals
    
   (define cheese
    (rotate 45 (triangle 300 "solid" "yellow")))

  (define holes
    (ellipse 45 30 "solid" "gold"))

 (overlay/offset
   holes
   20 75 (overlay/offset
   holes
   27 15 (overlay/offset
   holes
   100 70(overlay/offset
   holes
   50 50
   cheese))))}
 }
}

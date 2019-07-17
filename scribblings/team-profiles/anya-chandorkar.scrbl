#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Anya Chandorkar"
      "anya-chandorkar.jpg"
      "Hi my name is Anya. I'm going to be a senior in highschool this year
and I want to major in Computer Science.")

@blog{
 @blog-post["Day 21"]{
   Created new examples using the 2htdp/image library.

   @bold{Platypus example}
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
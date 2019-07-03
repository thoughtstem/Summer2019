#lang scribble/base

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Allison Casasola"
      "allison-casasola.jpg"
      "Hi, my name is Allison Casasola. I am a rising senior at Chaparral High School from Temecula, CA.")

@blog{

 @blog-post["Day 10"]{
  Made our own examples for a Kata that involves the commands apply and map. - 07/02/19}

 @blog-post["Day 11"]{
  Learned how to submit a pull request through GitHub and developed more protokatas.                    
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
 }                    
             }
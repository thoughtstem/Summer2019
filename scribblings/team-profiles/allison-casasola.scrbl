#lang scribble/manual

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

  Helped teach at UCSD for ENLACE!
 }
 @blog-post["Day 28 07/22/19"]
 {
 Beginning of my second project week!
 }
 }
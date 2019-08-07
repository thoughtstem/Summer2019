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
 @blog-post["Day 28 07/22/19"]{
 Beginning of my second project week. Not too much, refreshed my
 memory on how to create pull requests and began an issue for organizing
 and modifying explanations to new-katas-c.
 }

 @blog-post["Day 29 07/23/19"]{
  Finished issue for new-katas-c.
  Updated Summer2019/Languages/my-game-lang/examples.rkt and
  Summer2019/Kata-Collections/my-game-katas/katas.rkt by creating
  kata definitions for the googly-eye katas.
 }
 @blog-post["Day 30 07/24/19"]{
  Debugged data-sci-lang that was breaking the build. Worked on data-sci
  katas to add more examples relating to map and apply that progressed from easy,
  medium, to hard. Finished Data-Sci katas by structuring the folder to have 21
  katas that progressed from easy, medium, and hard.
 }
 @blog-post["Day 31 07/25/19"]{
 Made two GIF-kata examples (gudeKATA is what I like to call it).
 I will push it tomorrow.}
 @blog-post["Day 32 07/26/19"]{
 Attempted to make a game with gudetama. Will try to continue working
 on it at home. Pushed my two katas from yesterday.}
 @blog-post["Day ??? 08/7/19"]{
 Rehearsed job application scenarios. Added definitions to meme katas with Chris and Katie.
 Created a hard kata for GIFs.}
 @blog-post["Day ??? 08/8/19"]{
 Wifi was out, but not to worry! Had a productive day rehearsing more job application
 scenarios, problem-solving/coding some challenges that Stephen gave us, such as,
 "Add 2 #s stored as linked lists w/digits reversed. Return a list." I was successfully
 able to code this on my one! Once wifi was on, I added 3 kata definitions to GIFs-lang.
 Unfortunately, this is my last day :(. Thank you Stephen and ThoughtSTEM for this wonderful
 learning opportunity! Will definitely look back on this internship as my first dip into
 the tech world as I venture into school and the programming industry!}
 }
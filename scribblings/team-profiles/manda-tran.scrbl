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

@;Code for platypus example
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

 @blog-post["Day 1 - 06/17/19"]{
  Distributed Cognition

  Discussed the definition of distributed cognition as the mind not being
  limited to the individual. It includes utilizing resources from the
  environment (artifacts and other people). Distributed Cognition counters the
  traditional view that the mind is contained in the body. This article can be
  found @hyperlink{https://en.wikipedia.org/wiki/Distributed_cognition
   here}.

  @bold{Chinese Room}

  As an example of distributed cognition we researched the Chinese Room
  experiment. Information about this can be found
  @hyperlink{https://www.iep.utm.edu/chineser/
   here}.
 }

 @blog-post["Day 2 - 06/18/19"]{
  Recognition vs Recall
  Talked about the distinction between recognition and recall. Recognition is a
  more shallow understanding of a concept while recall requires a deeper
  understanding. We discussed this concept in terms of language specifically how
  the English language has subsets that require futher fluency.
 }

 @blog-post["Day 3 - 06/19/19"]{
  Refactoring/Broca's Region/fMRI studies

  Broca's Region is much more than just the language processing area of the
  brain. It also deals with language comprehension and even muscle movements.
  One of the things that I found particularly interesting was the Shadow Puppets
  and Broca's Region experiment in which people studied fMRI scans of people
  viewing shadow puppets. This showed that Broca's Region was active, and
  probably has to do with human gesturing being included in a form of
  communication and the fact that mirror neurons have been found in Broca's Region.

 }

 @blog-post["Day 4- 06/20/19"]{
  New Tactic Code Anatomy Race

  @(tactic->scribble
    (code-anatomy-race 'Coach
                       'Team
                       'Team-Computers
                       'both-challenge-cards
                       'both-whiteboards
                       'the-markers))
 }

 @blog-post["Day 5 - 06/21/19"]{
  Ask Me Anything day with Stephen

  Talked about the differences between startups and big companies as well as
  useful skills to have in the industry (referenced ThoughSTEM Assessments
  Handbook). Also discussed a variety of languages and programming paradigms.

  Worked on and completed out New Tactic developed in Day 4.
 }

 @blog-post["Day 11"]{

  Talked about pair programming and made our own examples for map, apply, and
  curry ("the power tools of functional programming").
 }

 @blog-post["Day 12"]{

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

 @blog-post["Day 13"]{
                    
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
 @blog-post["Day 21"]{
  Experimented with 2htdp/image library and created new images.
 @bold{Cat Example}
  Code was lost :(
  }
 @blog-post["Day 22"]{
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
                cheese))))
  }
 }
  @blog-post["Day 23"]{
  Became more comfortable with the 2htdp/image library and created new examples.
  
  Started familiarizing self with 2htdp/universe library and creating animations.

  Worked on tickets.
  }
  @blog-post["Day 24"]{
   More practice with 2htdp/universe library and creating katas.
   }
  @blog-post["Day 25"]{
    Finished snowman ticket.
    
    @bold{Easy: Make a snowman with eyes and arms.}
    
    @codeblock{          
               (define head
                 (circle 20 "solid" "blue"))
               (define torso
                 (circle 40 "solid" "blue"))
               (define lower-body
                 (circle 60 "solid" "blue"))
               (define eyes
                 (overlay (circle 3 "solid" "black")
                 (circle 5 "solid" "white")))
               (define face
                 (overlay/offset eyes -10 5
                 (overlay/offset eyes 10 5
                 head)))
               (define left-arm
                 (rotate 45 (rectangle 3 60 "solid" "brown")))
               (define right-arm
                 (flip-vertical left-arm))
               (define upper-body
                 (overlay/offset left-arm 65 15
                 (overlay/offset right-arm  -50 15 torso)))

               (define detailed-snowman
                 (above face upper-body lower-body))
  }

    @bold{Medium: Make a snowman that moves to the left}

    @codeblock{
               (define snowman
                  (above (circle 20 "solid" "blue")
                         (circle 40 "solid" "blue")
                         (circle 60 "solid" "blue")))
               (define (draw-shape num)
                  (underlay/offset (rectangle 800 200 "solid" "white")
                         (- 400 num) 20 snowman))

               (define (fast-move num)
                  (+ num 5))

               (big-bang 0
                  (on-tick fast-move)
                  (to-draw draw-shape))
    }

    @bold{Hard: Make a snowman that jumps up and down and fades to blue.}

    @codeblock{            
               (define (head num)
                 (circle 20 "solid" (fade-color num)))
               (define (torso num)
                 (circle 40 "solid" (fade-color num)))
               (define (lower-body num)
                 (circle 60 "solid" (fade-color num)))
               (define eyes
                 (overlay (circle 3 "solid" "black")
                          (circle 5 "solid" "white")))
               (define (face num)
                 (overlay/offset eyes -10 5
                 (overlay/offset eyes 10 5
                 (head num))))
               (define left-arm
                 (rotate 45 (rectangle 3 60 "solid" "brown")))
               (define right-arm
                 (flip-vertical left-arm))
               (define (upper-body num)
                 (overlay/offset left-arm 65 15
                 (overlay/offset right-arm  -50 15 (torso num))))

               (define (detailed-snowman num)
                 (above (face num) (upper-body num) (lower-body num)))

               (define bg
                 (rectangle 300 600 "solid" "white"))

               (define (draw-shape num)
                (underlay/offset bg 0 (jumping num) (detailed-snowman num)))

               (define (fast-move num)
                (+ num 5))

               (define (jumping num)
                 (+ (* 150 (sin (/ num 20))) 20))

               (define (fade-color num)
                 (if (< num 255) (make-color 0 0 (+ num))
                     (make-color 0 0 255)))

               (big-bang 0
                (on-tick fast-move)
                (to-draw draw-shape))           
    }
  }
  
  @blog-post["Day 31 - 07/29/19"]{
   Assigned to work in data science katas. Added stimuli to the katas.
 }
  
  @blog-post["Day 32 - 07/30/19"]{
  Worked on Data Science kata tickets. Revised code for a function that produced an area histogram using a 3D plot.

  Discussed coding interviews and "Cracking the Coding Interview" questions.
 }

  @blog-post["Day 41 - 08/12/19"]{
    Talked about interview questions and explored #vr-lang.

    @bold{Create a VR scene with rotated and different colored blocks.
   Make a universe but instead of stars there are platypi.}
    @codeblock{
               #lang vr-lang

               (define body
                 (h:rectangle 140 70 "solid" "teal"))

               (define beak
                 (h:ellipse 50 20 "solid" "orange"))

               (define front-feet
                 (h:overlay/align "right" "bottom"
                        (h:ellipse 30 15 "solid" "orange")
                        (h:rotate 180 (h:isosceles-triangle  40 30 "solid" "teal"))))

               (define eyes
                 (h:overlay/offset (h:ellipse 12 10 "solid" "black")
                                 5 0
                                 (h:ellipse 30 20 "solid" "white")))

               (define tail
                 (h:rectangle 70 35 "solid" "orange"))

               (define platypus
                 (h:underlay/offset tail -90 10(h:overlay/offset beak 75 10
                      (h:overlay/offset eyes 50 30 (h:above/align "left" body
                      (h:beside front-feet front-feet front-feet front-feet))))))

 
               ;Here we declare the star-system component
               (register-remote-component star-system "https://cdn.rawgit.com/matthewbryancurtis/aframe-star-system-component/db4f1030/index.js")
 
               (define (my-box n)
                 (box
                  (position -1 n -3)
                  (rotation 0 (* n 10) 0)
                  (color 76 195 (* n 50) 255)))
 
               (define my-scene
                 (scene
                  (map my-box (range 10))
 
                  (basic (star-system (hash "count" 1000
                                            "radius" 40
                                            "depth" 0
                                            "starSize" 2
                                            "texture" platypus)))
                  (sky (color 0 0 0 0))))
 
               (send-to-browser my-scene)
  }
 }

  @blog-post["Day 42 - 08/13/19"]{
    Interview question warm-ups.

    @bold{Define a function that takes in two lists and adds up the corresponding values into a new list}
    @codeblock{
               #lang racket
   
               (define (sum list1 list2)
                   (if (or (empty? list1) (empty? list2))
                       '()
                       (cons (+ (first list1) (first list2))
                             (sum (rest list1) (rest list2)))))
    }

    @bold{Define a function that takes in two lists and returns the intersecting node}
    @codeblock{
               #lang racket
               
               (define (findNode list1 list2)
                   (if (or (empty? list1) (empty? list2))
                       null
                       (cond
                           [(= (length list1) (length list2))
                           (if (eq? list1 list2)
                               (first list1)
                               (findNode (rest list1) (rest list2)))]
                           [(> (length list1) (length list2))
                           (if (eq? list1 list2)
                               (first list1)
                               (findNode (rest list1) list2))]
                           [(< (length list1) (length list2))
                           (if (eq? list1 list2)
                               (first list1)
                               (findNode list1 (rest list2)))])))
  }

    Also attempted to create a VR snowman

    @codeblock{
               #lang vr-lang
 
                (define (my-snowman n)
                  (sphere
                    (position -1 (- (* n 2.5) 2) -6)
                    (color 255 255 255 255)
                    (radius (- 3 (* 0.50 n)))))
 
               (define my-scene
                 (scene
 
                  (my-snowman 1)
                  (my-snowman 2)
                  (my-snowman 3)
 
                  (sky (color 102 178 255 170))))
 
                (send-to-browser my-scene)
    }

  }
  
  @blog-post["Day 43 - 08/14/19"]{
  No internet today :( but we worked on interview questions with graphs and
  created classes to model our "Drone Story." In our story we proposed, the
  drones would help plant seeds in a field made up of sectors. Each drone
  either carried seeds or water and could be awake or asleep.
 }
  
  @blog-post["Day 44 - 08/15/19"]{
  We worked with our Drone Story again and wrote classes to represent the field
  and sectors. We also added methods that would count the total number of seeds
  in the field and how many sectors in the field had been watered. Also worked
  on a challenge to find the longest row or column that had not been watered in
  the field and then started thinking about to find the biggest "patch" in the
  field.

  Add vr-lang katas to the Kata-Collections and Languages.
 }

  @blog-post["Day 45 - 08/16/19"]{
  Today we worked on some interview questions and talked about finding efficient
  algorithms.

  @bold{Problem 1:} Add up all the multiples of 3 in some number N.

  First Solution:
  
  @codeblock{
             (define (sum-3s N)
                (if (< N 0)
                    0
                    (if (= (modulo N 3) 0)
                        (+ N (sum-3s (sub1 N)))
                        (sum-3s (sub1 N)))))
  }

  Second (Better) Solution:
  
  @codeblock{
             (define (sum-3s N)
                (define temp (floor (/ N 3)))
                (/ (* temp (+ (* temp 3) 3)) 2))
  }

  @bold{Problem 2:} Find the nth Fibonacci number.

  First Solution:
  
  @codeblock{
             (define (fibonacci n)
               (if (< n 2)
                   n
                  (+ (fibonacci (- n 2)) (fibonacci (sub1 n)))))
                  }

  Second Solution: In Java, use a while loop and two variables to keep track
  of the previous numbers.

  Also worked on some more vr-katas.

  @bold{Example 1} Create a scene with a snowman, a tree, and a blue background
  with snow.

  @codeblock{
             #lang vr-lang

             ;Here we declare the star-system component
             (register-remote-component star-system "https://cdn.rawgit.com/matthewbryancurtis/aframe-star-system-component/db4f1030/index.js")
 
 
              (define (my-snowman n)
                (sphere
                  (position -2 (- (* n 2.5) 2) -12)
                  (color 255 255 255 255)
                  (radius (- 3 (* 0.50 n)))))

             (define (my-tree n)
               (cone
                (position -16 (- (* n 4) 2) -16)
                (color 0 255 0 255)
                (radius-bottom (- 4 (* 0.50 n)))
                (height 6)))

             (define (my-trunk)
               (cylinder
                (position -16 -1 -16)
                (color 153 76 0)
                (radius 1)
                (height 4)))
 
             (define my-scene
               (scene
 
                (my-snowman 1)
                (my-snowman 2)
                (my-snowman 3)

                (my-tree 1)
                (my-tree 2)
                (my-tree 3)
                (my-trunk)

                (basic (star-system (hash "count" 1000
                                          "radius" 40
                                          "depth" 0
                                          "texture" (h:circle 10 "solid" "white"))))
                                          ;Note the h: prefix on 2htdp/image functions
 
                (sky (color 102 178 255 170))))
 
              (send-to-browser my-scene)
  }

  }

}

@(image "scribblings/team-profiles/profile-pics/bront.jpg")
#lang scribble/manual
@(require "./common.rkt"
          2htdp/image)

@(bio "Jack Ross"
      "jack-ross.png"
      "I am a sophomore at Yale University majoring in physics and computer science.
I enjoy hiking, philosophical conversations, and playing ultimate frisbee on the beach. In college,
I'm working on a CubeSAT project to launch a cosmic ray detector satellite into space. I also
participate in debate and volunteer with the Red Cross.")

@(define (extremities)
    (make-pen "green" 6 "solid" "round" "round"))

@(define (horns)
    (isosceles-triangle 20 30 'solid "white"))

@(overlay/offset
  (text "23   19" 96 "Yellow")
  0 -107
  (overlay/offset
   (rectangle 10 80 'solid "green")
   20 -100
   (overlay/offset
    (rectangle 10 80 'solid "green")
    -20 -100
    (overlay/offset
     (horns)
     20 75
     (overlay/offset
      (horns)
      -20 75
      (overlay/offset
       (ellipse 85 20 'solid "black")
       0 -30
       (overlay/offset
        (ellipse 85 30 'solid "red")
        0 -30
        (add-curve
         (add-curve
          (overlay/offset
           (circle 10 'solid "black")
           0 25
           (overlay/offset
            (circle 30 'solid "white")
            0 25
            (overlay
             (circle 75 'solid "green")
             (rectangle 300 400 'solid "blue"))
            )
           )

          100 20 0 1/3
          100 200 0 2/3 (extremities))
         200 200 0 2/3
         200 20 0 1/3 (extremities)))))))))

@blog{
      
 @blog-post["Personal Philosophy"]{
  According to all known laws of aviation, there is no way a bee should be able to fly. Its wings are too small to get its
  fat little bodyoff the ground. The bee, of course, flies anyway because bees don't care what humans think is impossible.
 } 

 @blog-post["Day 16"]{
  We had a fascinating introduction to github and working with the terminal. We first created our bios and pushed them to
  the repository. We spent the rest of the day organizing and editing fundamental katas. I also had a great sandwich from
  Judy's Cafe.
 }

 @blog-post["Day 17"]{
  Jason taught us how to revert commits. We pushed dummy texts to the repo and then reverted them. We familiarized
  ourselves with 2htdp. I created an image of Mike Wazowski and added it to my bio (pictured above).
 }

 @codeblock{
  (require 2htdp/image)
              
  (define (horns)
  (isosceles-triangle 20 30 'solid "white"))
   
  (define (extremities)
  (make-pen "green" 6 "solid" "round" "round"))

  (overlay/offset
  (text "23   19" 96 "Yellow")
  0 -107
  (overlay/offset
  (rectangle 10 80 'solid "green")
  20 -100
  (overlay/offset
  (rectangle 10 80 'solid "green")
  -20 -100
  (overlay/offset
  (horns)
  20 75
  (overlay/offset
  (horns)
  -20 75
  (overlay/offset
  (ellipse 85 20 'solid "black")
  0 -30
  (overlay/offset
  (ellipse 85 30 'solid "red")
  0 -30
  (add-curve
  (add-curve
  (overlay/offset
  (circle 10 'solid "black")
  0 25
  (overlay/offset
  (circle 30 'solid "white")
  0 25
  (overlay
  (circle 75 'solid "green")
  (rectangle 300 400 'solid "blue"))
  )
  )

  100 20 0 1/3
  100 200 0 2/3 (extremities))
  200 200 0 2/3
  200 20 0 1/3 (extremities)))))))))
 }

 @blog-post["Day 18"]{
  I created three katas (in fundamentals) for the rotate function, each with a different level of difficulty. The easiest kata is to rotate
  a green ellipse by 45 degrees. The medium kata challenges the programmer to define a function that rotates a red square
  by x degrees. The most difficult kata requires the programmer input an angle in radians and then define functions to
  converts radians to degrees and rotate text by that amount.
 }

 @codeblock{
  (require 2htdp/image)

  ;Easy Kata: "Rotate a green ellipse by 45 degrees"

  (rotate 45 (ellipse 60 20 "solid" "green"))

  
  ;Medium Kata: "Define a function that rotates a square by x degrees" 

  (define (rotate-square x)
  (rotate x (square 20 "solid" "red")))

  (rotate-square 45)

  
  ;Difficult Kata: "Define a function which converts an angle in radians to degrees, and use that function to construct a piece of text upside down."

  (define (radians-to-degrees r)
  (* (/ 180 pi) r))

  (define(rotate-text r)
  (rotate (radians-to-degrees r) (text "Hello" 24 "black")))

  (rotate-text pi)
 }

 @blog-post["Day 19"]{
  We played around more with 2htdp and created katas using overlay, offset, and superimpose functions. I worked with
  2htdp/universe in the afternoon and created a kata of an animated ball that could be controlled with the arrow keys.
  I also spent the afternoon learning how to use the map, apply, curry, compose, and shuffle functions on racket,
  as well as creating lambda functions.
                      }

 @blog-post["Day 20"]{
  I organized and edited all of the 'medium' katas from the 'kata b' file (the katas made in the previous week). I added
  them to the examples.rkt file, organized them into a subcollection, and pushed them to the repository.
 }

 @blog-post["Day 21"]{
  We worked with Jason in the game engine. After scrolling through some of the files (and thousands of lines of code),
  we began to edit the game engine (on our own branch, of course) to change features. For example, I changed the default
  red dot to my 2htdp Mike Wazowski character that I made earlier in the week. We also changed the default settings of
  custom-enemy and custom-coin. I also created a function so that gets the playerposition and restricts movement so that
  the player cannot move off the screen.
 }

 
 @blog-post["Day 26"]{
  I added descriptions to master-doc in the morning. In the afternoon, we went through some of the unorganized katas
  in new-katas-b and new-katas-070819 and moved them to the correct folders.
 }

 @blog-post["Day 27"]{
  We created pokeball animation katas and organized them into a subcollection. We also worked with Daniel and Michael on
  creating a new system for organizing and rendering all of the fundamental katas in my-fundamentals-katas/katas.rkt and
  my-fundamentals-katas/rendering.rkt.
 }

 @codeblock{
  (require 2htdp/image
  2htdp/universe)

  (define WIDTH 400)
  (define HEIGHT 300)
  (define x-speed -1)
  (define y-speed 1)
  (define b 0)
  (define radius 20)

  (struct posn (x y))
  (define (update-x-pos x) (+ x x-speed))
  (define (update-y-pos y) (+ y y-speed))


  (define (update p)
  (set! b (+ 4 b))
  (check-hor-borders (posn-x p))
  (check-ver-borders (posn-y p))
  (posn (update-x-pos (posn-x p)) (update-y-pos (posn-y p))))

  (define (check-hor-borders i)
  (cond
  [(negative? (- i radius)) (set! x-speed (* -1 x-speed))]
  [(positive? (- i (- WIDTH radius))) (set! x-speed (* -1 x-speed))]
  [else (set! x-speed (* 1 x-speed))]))

  (define (check-ver-borders j)
  (cond
  [(negative? (- j radius)) (set! y-speed (* -1 y-speed))]
  [(positive? (- j (- HEIGHT radius))) (set! y-speed (* -1 y-speed))]
  [else (set! y-speed (* 1 y-speed))]))

  (define (random-color)
  (first (shuffle (list 'red 'orange 'yellow 'green 'blue 'purple))))


  (define (pokeball)
  (scale (/ radius 70) (rotate b
  (overlay
  (circle 15 'solid 'white)
  (circle 25 'solid 'black)
  (rectangle 120 10 'solid 'black)
  (place-image
  (crop 0 0 120 60 (circle 60 'solid (random-color)))
  60 30
  (circle 60 'solid 'white))
  (circle 70 'solid 'black))
  )))

  (define (render p)
  (place-image (pokeball)
  (posn-x p) (posn-y p)
  (empty-scene WIDTH HEIGHT)))


  (big-bang (posn 100 100)
  [to-draw render]
  [on-tick update]
  )
 }

 @blog-post["Day 28"]{
  Katie and I started working on creating a diagram to map the dependencies of all the files in the repo. We first had to
  figure out how to create diagrams on racket. We worked with pin-arrow-line on pict to create a function that would take
  in n elements and organize them into a diagram with arrows. We've gotten very far with coding it, but we will have to
  finish tomorrow.
 }

 @blog-post["Day 29"]{
  Katie and I finished the diagram function (with much help from Stephen). We spent the rest of the day mapping the
  file dependencies on paper and will continue to work on it tomorrow. We may not have time to make the electronic diagram--
  it will probably require more work in future weeks.
 }

 @codeblock{
  (define pict-a (frame (text " Summer2019 " null 20)))
  (define pict-b (frame (text " Kata-Collections " null 20)))
  (define pict-c (frame (text " Languages " null 20)))
  (define pict-d (frame (text " scribblings " null 20)))

  (define (newlayer ss)
  (vc-append 50 (first ss)
  (apply hc-append 100 (rest ss))))
  (define (one-arrow to layer from)
  (pin-arrow-line 10 layer
  to cb-find
  from ct-find))
  (define (everything . boxes)
  (define layer (newlayer boxes))
  (apply cc-superimpose (map (curry one-arrow (first boxes) layer) (rest boxes))))

  (everything pict-a pict-b (everything pict-d pict-c))
 }
             
}
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
  According to all known laws of aviation, there is no way a bee should be able to fly. Its wings are too small to get its fat little body
  off the ground. The bee, of course, flies anyway because bees don't care what humans think is impossible.
 } 

 @blog-post["Day 16"]{
  A fascinating introduction to github and working with the terminal. We've created our bios and pushed them. I had a great sandwich from
  Judy's Cafe.
 }

 @blog-post["Day 17"]{
  We pushed dummy texts and then reverted them. We've created a 2htdp image of Mike Wazowski and added them to our bios.
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
  We created three katas for the rotate function, each with varying levels of difficulty. The easiest kata is to rotate a green ellipse by
  45 degrees. The medium kata challenges the programmer to define a function that rotates a red square by x degrees. The most difficult
  kata requires the programmer input an angle in radians and then define functions to converts radians to degrees and rotate text by that amount.
 }

 @codeblock{
  (require 2htdp/image)

  ;easy kata "Rotate a green ellipse 45 degrees"

  (rotate 45 (ellipse 60 20 "solid" "green"))

  
  ;medium kata "Define a function that rotates a square by x degrees" 

  (define(rotate-square x)
  (rotate x (square 20 "solid" "red")))

  (rotate-square 45)

  
  ;hard kata "Define a function that rotates text by r radians"

  (define(radians-to-degrees r)
  (* (/ 180 pi) r))

  (define(rotate-text r)
  (rotate (radians-to-degrees r) (text "Hello" 24 "black")))

  (rotate-text pi)
 }
}
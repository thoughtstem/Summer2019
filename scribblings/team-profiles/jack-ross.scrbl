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
      200 20 0 1/3 (extremities))))))

@codeblock{

 (define (horns)
 (isosceles-triangle 20 30 'solid "white"))
   
 (define (extremities)
 (make-pen "green" 6 "solid" "round" "round"))

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
 200 20 0 1/3 (extremities))))))
}

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
}
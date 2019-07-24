#lang scribble/manual

@(require 2htdp/image)
@(require "./common.rkt")

@(bio "Ambre Decilap"
      "ambre-decilap.jpg"
      "Howdy, I'm a rising freshman planning to major in electrical engineering and computer science.")
@blog{

@blog-post["Personal Philosophy"]{
   Existential-Dudeism
   
 }
@blog-post["Day 16"]{
   @(above
 (overlay/offset
 (ellipse 20 20 100 "grey")
 -10 10 
 (ellipse 20 15 100 "black")) 
 (overlay/offset
 (rectangle 10 20 "solid" "brown")
 10 0
 (triangle 40 "solid" "brown")
 )
 (overlay/align "middle" "bottom"
                (overlay/offset
                 (circle 2 "solid" "green")
                 -5 0
                (rectangle 15 20 "solid" "black"))
                (overlay/offset
                 (overlay
                  (rectangle 2 10 "solid" "black")
                  (rectangle 10 2 "solid" "black")
                 (square 10 "solid" "yellow"))
                 10 10
                 (square 40 "solid" "slateblue"))))
   @codeblock{(above
 (overlay/offset
 (ellipse 20 20 100 "grey")
 -10 10 
 (ellipse 20 15 100 "black")) 
 (overlay/offset
 (rectangle 10 20 "solid" "brown")
 10 0
 (triangle 40 "solid" "brown")
 )
 (overlay/align "middle" "bottom"
                (overlay/offset
                 (circle 2 "solid" "green")
                 -5 0
                (rectangle 15 20 "solid" "black"))
                (overlay/offset
                 (overlay
                  (rectangle 2 10 "solid" "black")
                  (rectangle 10 2 "solid" "black")
                 (square 10 "solid" "yellow"))
                 10 10
                 (square 40 "solid" "slateblue"))))}
 }

}
@blog-post["Day 18"]{Easy: Construct 3 solid circles, one blue, one red, and one yellow, all with a radius of 10.}
@(beside (circle 10 'solid "red")
        (circle 10 'solid "blue")
        (circle 10 'solid "yellow")
        )
@codeblock{
(beside (circle 10 'solid "red")
        (circle 10 'solid "blue")
        (circle 10 'solid "yellow"))}

@blog-post{Medium: Create a function with multiple rectangles that spell HI by first contructing an H and then using the rotate function.}

@(beside (rectangle 5 30 'solid "lightseagreen")
        (rectangle 15 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 10 30 'solid "white")
        (rotate 90
          (beside
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 20 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen"))
        ))

@codeblock{(beside (rectangle 5 30 'solid "lightseagreen")
        (rectangle 15 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 10 30 'solid "white")
        (rotate 90
          (beside
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 20 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen"))))}

@blog-post{Hard: Define a function which aligns 3 stars beside each other and accepts color as an input. Use this to construct a framed image calling the function 3 times, each with a different color and scale.}

@(define (star color)

(beside/align "top"
        (star-polygon 5 10 3 'solid color)
        (star-polygon 10 10 3 'solid color)
        (star-polygon 20 10 3 'solid color)
        ))
@(frame (beside/align "bottom" (star "cornflowerblue") (scale 2 (star "midnight blue")) (star "cyan")
                     ))
@codeblock{
(define (star color)

(beside/align "top"
        (star-polygon 5 10 3 'solid color)
        (star-polygon 10 10 3 'solid color)
        (star-polygon 20 10 3 'solid color)))

(frame (beside/align "bottom" (star "cornflowerblue") (scale 2 (star "midnight blue")) (star "cyan")))}

@blog-post["7/23/19"]{
   We both edited the katas to remove those we found redundant and added proto-stimuli that described the objectives the katas sought to achieve. We pushed these changes to master.
   
 }
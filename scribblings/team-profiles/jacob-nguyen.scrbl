#lang scribble/manual

@(require "./common.rkt"
         )

@(require 2htdp/image)

@(bio "Jacob Nguyen"
      "jacobn.png"
      "My name is Jacob and I am attending Cal State Fullerton where I am studying computer science, and I am originally from Temecula, California.
Some of my favorite past times are hunting for best coffee shops, gardening, and coding.")

@blog-post["Day 2"]{
@(above
 (rectangle 30 10 "solid" "green")
(beside (circle 10 "solid" "purple")
        (circle 10 "solid" "purple")
        (circle 10 "solid" "purple"))

(beside (circle 10 "solid" "purple")
        (circle 10 "solid" "purple")
        )

(circle 10 "solid" "purple"))
}

@blog-post["Day 3"]{
 These are my Katas for demonstrating the above function
 
@codeblock{
(define (leaning-stack direction)
  (above/align direction
               (ellipse 60 20 "solid" "green")
               (ellipse 50 20 "solid" "red")
               (ellipse 40 20 "solid" "green")
               (ellipse 20 20 "solid" "red")))
(leaning-stack "left")
}
@(above/align "left"
               (ellipse 60 20 "solid" "green")
               (ellipse 50 20 "solid" "red")
               (ellipse 40 20 "solid" "green")
               (ellipse 20 20 "solid" "red"))
 
@codeblock{
(define (stack shape1 shape2)
  (above shape1 shape2))
(stack(circle 20 "solid" "green")
      (circle 20 "solid" "red"))
           }

@(above(circle 20 "solid" "green")
      (circle 20 "solid" "red"))

                    }

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
#lang scribble/manual

@(require "./common.rkt"
         )
@(require 2htdp/image)
@(bio "Jacob Nguyen"
      "jacobn.png"
      "My name is Jacob and I am attending Cal State Fullerton where I am studying computer science, and I am originally from Temecula, California.
Some of my favorite past times are hunting for best coffee shops, gardening, and coding.")

@blog-post[Day 2] {
@((above
 (rectangle 30 10 "solid" "green")
(beside (circle 10 "solid" "purple")
        (circle 10 "solid" "purple")
        (circle 10 "solid" "purple"))

(beside (circle 10 "solid" "purple")
        (circle 10 "solid" "purple")
        )

(circle 10 "solid" "purple")))
}

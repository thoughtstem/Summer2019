#lang scribble/manual

@(require "./common.rkt"
          2htdp/image
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-code-no-peeking.rkt"
          "../new-tactics/no-peeking.rkt")

@(bio "Zhiqiang Pi" 
      "Zhiqiang-Pi.jpg"
      "I started coding in 11th grade doing java. I know a little bit of python. I go to UCSD.")

@blog{

 @blog-post["Day 1"]{
@(add-curve
 (underlay/offset (circle 40 "solid" "yellow")
                 0 -10
                 (underlay/offset (circle 10 "solid" "blue")
                                  -30 0
                                  (circle 10 "solid" "blue")))
 60 60 -30 1/6
 30 60 30 1/6
 "black"

 )          
@codeblock{(add-curve
 (underlay/offset (circle 40 "solid" "yellow")
                 0 -10
                 (underlay/offset (circle 10 "solid" "blue")
                                  -30 0
                                  (circle 10 "solid" "blue")))
 60 60 -30 1/6
 30 60 30 1/6
 "black") ; a smily face with blue eyes, a yellow face, and a curved mouth}
 
 @blog-post["Week 1"]{I worked on making games with racket with 2htdp/universe and 2hdtp/image}

 @blog-post["Week 2"]
 {
  Day1: Started
  }


 
  }
 }
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

 Easy Kata: Stack one circle above another circle
 @codeblock{
(define (stack shape1 shape2)
  (above shape1 shape2))
  
(stack(circle 20 "solid" "green")
      (circle 20 "solid" "red"))
           }

@(above(circle 20 "solid" "green")
      (circle 20 "solid" "red"))

 Medium Kata: Create a tornado by stackin ellipses and
aligning them to the right or left.
@codeblock{
 (define (leaning-stack direction)
  (above/align direction
     (ellipse 60 20 100 "grey")
     (ellipse 50 20 100 "grey")
     (ellipse 40 20 100 "grey")
     (ellipse 20 20 100 "grey")))
 (leaning-stack "left")
 
}
@(above/align "left"
   (ellipse 60 20 100 "grey")
   (ellipse 50 20 100 "grey")
   (ellipse 40 20 100 "grey")
   (ellipse 20 20 100 "grey"))

 Hard Kata: Make a snowman with 3 different sized circles

 @codeblock{
(define (snowman b m t)
  (above
     (overlay
        (triangle 10 "solid" "orange")
        (circle t "outline" "black"))
     (circle m "outline" "black")
     (circle b "outline" "black")))
     
(snowman 40 20 15)
                    }
 @(above (overlay
          (triangle 10 "solid" "orange")
          (circle 15 "outline" "black"))
         (circle 20 "outline" "black")
         (circle 40 "outline" "black"))

 @blog-post["Day 4"]{
  The coding warm up for today was to get the sum of all numbers in a list.
  @codeblock{
  My solution:
  def list_sum(list1):
     for each num in list1:
        sum += num
      return sum
  }
  Today I just experimented with some of the capabilities of vr-lang by making a world with my 2htdp image.
  @codeblock{
             #lang vr-lang
 
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
                             "texture" (
                                        h:above (h:rectangle 30 10 "solid" "green")
                                                (h:beside (h:circle 10 "solid" "purple")
                                                          (h:circle 10 "solid" "purple")
                                                          (h:circle 10 "solid" "purple"))

                                                (h:beside (h:circle 10 "solid" "purple")
                                                          (h:circle 10 "solid" "purple")
                                                          )
                                                (h:circle 10 "solid" "purple")))))
   (sky (color 0 0 0 0))))
 
(send-to-browser my-scene)}
                     }
}
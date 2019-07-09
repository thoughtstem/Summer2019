#lang scribble/manual

@(require "./common.rkt")

@(bio "Cristine Penero" 
      "cristine.png"
      "I am a junior in college majoring in Computer Science and Engineering at University of California, Merced"
      )
      
@blog{


@blog-post["Personal Philosophy"]{
       Life is like coding. You run it; and if there's any problem, you fix it and recompile it again until you get it right.
 }
@blog-post["Day 1"]{
       We learned how to use github and were introduced to 2htdp.
 @codeblock{
       #lang racket

(require 2htdp/image)
(above 
 (isosceles-triangle 60 120 "solid" "aquamarine")

 (overlay/offset (square 25 'solid "blue") 20 20
                 (overlay/offset (square 25 'solid "blue") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "black") 0 -20
                                                 (rectangle 100 80 'solid "red")))))




(overlay/offset
 (overlay/offset (ellipse 30 10 'solid "pink") 0 -25
                 (overlay/offset (circle 5 'solid "black") -20 0
                                 (overlay/offset (circle 5 'solid "black") 20 0
                                                 (overlay/offset (circle 15 'solid "black") -40 40
                                                                 (overlay/offset (circle 15 'solid "black") 40 40
                                                                                 (ellipse 100 90 "solid" "brown"))))))
 0 100
 (underlay/offset (circle 20 'solid "brown") 20 -70
                  (underlay/offset (circle 20 'solid "brown") -50 -70
                                   (underlay/offset
                                    (ellipse 50 20 'solid "brown") -80 10
                                    (underlay/offset
                                     (ellipse 50 20 'solid "brown") 80 10 
                                     (ellipse 120 150 'solid "red")))))
 )

}
 }}
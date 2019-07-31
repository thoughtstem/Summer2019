#lang scribble/manual

@(require 2htdp/image)

@(require "./common.rkt")

@(bio "Jake Graven"
      "jake-g.jpg"
      "I love my cat, Steve.")

@blog{

@blog-post["Personal Philosophy"]{                   
It is what it is.
}
@blog-post["Day 1"]{
Today I learned how to use github and I made this blog. I also made a few pictures with the 2htdp/image library...

Such as this house...
@(above
 (overlay/offset
 (ellipse 20 20 100 "grey")
 -10 10 
 (ellipse 20 15 100 "black")) 
 (overlay/offset
 (rectangle 10 20 "solid" "brown")
 10 0
 (triangle 40 "solid" "brown"))
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

 @codeblock{#lang racket
            
 (require 2htdp/image)
 
 (above
 (overlay/offset
 (ellipse 20 20 100 "grey")
 -10 10 
 (ellipse 20 15 100 "black"))
 
 (overlay/offset
 (rectangle 10 20 "solid" "brown")
 10 0
 (triangle 40 "solid" "brown"))
 
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

...and this monstrosity...

  @(overlay/offset
     (overlay/offset
     (circle 5 "solid" "black")
     -15 0
     (overlay/offset (overlay
                 
            
                      (circle 5 "solid" "black")
                      (circle 20 "solid" "white"))
                      20 0
                  
                     (circle 20 "solid" "white")))
    0 75
 
    (overlay/offset
     (overlay/offset
      (circle 10 "solid" "darkgreen")
      0 15
      (ellipse 20 40 "solid" "black"))
     0 20
     (ellipse 100 250 "solid" "darkgreen")))

@codeblock{#lang racket
           
 (require 2htdp/image)
 
 (overlay/offset
 (overlay/offset
 
 (circle 5 "solid" "black")
 -15 0
 (overlay/offset (overlay
                 (circle 5 "solid" "black")
                 (circle 20 "solid" "white"))
                 
                 20 0 
                 (circle 20 "solid" "white")))
                 
   0 75
 
   (overlay/offset
   (overlay/offset
   (circle 10 "solid" "darkgreen")
   0 15
   (ellipse 20 40 "solid" "black"))
   0 20
   (ellipse 100 250 "solid" "darkgreen")))}
}

@blog-post["Day 2"]{
I learned how to revert commits in github and I explored the data science library.
}

@blog-post["Day 3"]{
I made a few katas for the 2htdp/image library.


@codeblock{;Rotate a green ellipse 45 degrees
   (require 2htdp/image)
           
   (rotate 45 (ellipse 60 20 "solid" "green"))}

@(rotate 45 (ellipse 60 20 "solid" "green"))

@codeblock{;Define a function that rotates a square
  (require 2htdp)
           
  (define(rotate-square x)
  (rotate x (square 20 "solid" "red")))

  (rotate-square 45)}

@(rotate 45 (square 20 "solid" "red"))

@codeblock{;Define a function that rotates text using radians
  (require 2htdp/image)
           
  (define(radians-to-degrees r)
  (* (/ 180 pi) r))

  (define(rotate-text r)
  (rotate (radians-to-degrees r) (text "I'm rotated pi radians!" 24 "black")))

  (rotate-text pi)}

  @(rotate 180 (text "I'm rotated pi radians!" 24 "black"))

}
@blog-post["Day 4"]{          
I learned how to use map, curry, and compose functions in Racket.
}
@blog-post["Day 5"]{
Today I looked at some of the source code for ThoughtSTEM's game engine.
}
@blog-post["Day 6 (7/29/19)"]{
Today I updated my blog and revised data science katas.
}
@blog-post["Day 7 (7/30/19)"]{
We learned how to ace a coding interview by going through the process of answering a mock question.  
}
@blog-post["Day 8 (7/31/19)"]{

}
}


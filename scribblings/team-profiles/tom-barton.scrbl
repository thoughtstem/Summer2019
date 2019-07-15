#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@(bio "Tom Barton" 
      "tom.jpg"
      "I started coding my senior year of high school in AP Computer Science. I just finished the intro series of CS classes during my freshman year at the University of Maryand, College Park.  I know Java as well as a little bit of HTML.")

@blog{

 @blog-post["Day 1"]{
  We stated learning the racket language and were introduced to git.
  1. This creates concentric circles.
  @codeblock{(apply cc-superimpose (map circle (range 10 100 20)))}
  2. This creates a series of jack-o-lanterns that grow in size.
  @codeblock{(apply hc-append (map jack-o-lantern (range 20)))}
  3. This creates concentric ellipses.
  @codeblock{(apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))}
 }

 @blog-post["Day 2"]{
  Learning how to better use git and adding map/apply examples.
  1.This makes different color clouds
  @codeblock{ (define nums (range 10))

   (define bools (map even? nums))
   (define (toColor b)
   (if b "lavenderblush" "red"))

   (define colors
   (map toColor bools))

   (apply vc-append (map cloud (range 90 100) (range 90 100) colors))}
 }
 @blog-post["Day 3"]{
  We were assigned tickets and began working on the new-kataC ticket. We were assigned to create new hard (between 11-20 pairs of parentheseis) katas.
  1. This rotates a square
  @codeblock{(define nums (range 0 10))
   (define (rotateSquare n)
   (rotate (colorize (filled-rectangle 30 30)
   "purple") n))
   (apply vc-append (map rotateSquare nums))}
  2. This flips the fish horizontally. 
  @codeblock{(define nums (range 0 10))
   (define bools (map even? nums))
   (define (flip b)
   (if b 'right 'left))
   (define direction (map flip bools))

   (define (fish s)
   (standard-fish 100 50 #:direction s #:open-mouth #t #:color "salmon"))

   (apply hc-append (map fish direction))
  }
  3. This shuffles a list of desktop machines
  @codeblock{(apply hc-append (shuffle (map desktop-machine (range 5))))}
  4. This creates thermometers of different sizes
  @codeblock{(define (thermo n)
   (thermometer #:stem-height n
   #:bottom-circle-diameter 40
   #:top-circle-diameter 20
   #:mercury-inset 4))

   (apply hc-append (map thermo (range 40 120 20)))}
 }
 @blog-post["Day 4"]{
  Fourth of July
 }
 @blog-post["Day 5"]{
  We finished up the new-kataC ticket with the hard katas, and began a new ticket working on the tips and tricks document, making a standard format for formatting all the new proto-katas. 
 }
 @blog-post["Day 16"]{
   This code draws a simple house.
   
   @(above 
 (isosceles-triangle 60 120 "solid" "aquamarine")

 (overlay/offset (square 25 'solid "blue") 20 20
                 (overlay/offset (square 25 'solid "blue") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "black") 0 -20
                                                 (rectangle 100 80 'solid "red")))))
   @codeblock{#lang racket
(require 2htdp/image)

(above 
 (isosceles-triangle 60 120 "solid" "aquamarine")

 (overlay/offset (square 25 'solid "blue") 20 20
                 (overlay/offset (square 25 'solid "blue") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "black") 0 -20
                                                 (rectangle 100 80 'solid "red")))))


}
   This code draws a teddy bear.

   @(overlay/offset
 (overlay/offset (ellipse 30 10 'solid "pink") 0 -25
                 (overlay/offset (circle 5 'solid "black") -20 0
                                 (overlay/offset (circle 5 'solid "black") 20 0
                                                 (overlay/offset (circle 15 'solid "black") -40 40
                                                                 (overlay/offset (circle 15 'solid "black") 40 40
                                                                                 (ellipse 100 90 "solid" "brown"))))))
 0 100
 (overlay/offset (circle 4 'solid "brown") -10 -20
                 (overlay/offset (beside (rotate 270 (triangle 30 "solid" "lightcoral"))(rotate 90 (triangle 30 "solid" "lightcoral"))) -10 30
                                 (underlay/offset (circle 20 'solid "brown") 20 -70
                                                  (underlay/offset (circle 20 'solid "brown") -50 -70
                                                                   (underlay/offset
                                                                    (ellipse 50 20 'solid "brown") -80 10
                                                                    (underlay/offset
                                                                     (ellipse 50 20 'solid "brown") 80 10 
                                                                     (ellipse 120 150 'solid "red"))))))))
    @codeblock{#lang racket
(require 2htdp/image)

(overlay/offset
 (overlay/offset (ellipse 30 10 'solid "pink") 0 -25
                 (overlay/offset (circle 5 'solid "black") -20 0
                                 (overlay/offset (circle 5 'solid "black") 20 0
                                                 (overlay/offset (circle 15 'solid "black") -40 40
                                                                 (overlay/offset (circle 15 'solid "black") 40 40
                                                                                 (ellipse 100 90 "solid" "brown"))))))
 0 100
 (overlay/offset (circle 4 'solid "brown") -10 -20
                 (overlay/offset (beside (rotate 270 (triangle 30 "solid" "lightcoral"))(rotate 90 (triangle 30 "solid" "lightcoral"))) -10 30
                                 (underlay/offset (circle 20 'solid "brown") 20 -70
                                                  (underlay/offset (circle 20 'solid "brown") -50 -70
                                                                   (underlay/offset
                                                                    (ellipse 50 20 'solid "brown") -80 10
                                                                    (underlay/offset
                                                                     (ellipse 50 20 'solid "brown") 80 10 
                                                                     (ellipse 120 150 'solid "red"))))))))

}}
 @blog-post["Day 17"]{
  We leaned how to revert changes and added the imbeded images into the blog. Continued to work on the 2htdp images above and began to learn #lang fundamentals)
}
 @blog-post["Day 18"]{
  We worked on making 2htdp/image katas.

   @bold{EASY} - Overlay a red circle centered on top of a white rectangle (Use the Japanese flag as reference)

   HINT - The syntax for (overlay) is @verbatim{(overlay (shape on bottom) (shape on top))}

  @(overlay (circle 20 'solid "red") (rectangle  130 80 'solid "snow"))
@codeblock{(overlay (circle 20 'solid "red") (rectangle  130 80 'solid "white"))}

@bold{MEDIUM} - Overlay 5 circles that get smaller and less transparent.

HINT - change @bold{'solid} to a number between 0 and 255 to change the transparency of the circle.

@(overlay (circle 50 50 "Midnightblue")
         (circle 40 100 "Midnightblue")
         (circle 30 150 "Midnightblue")
         (circle 20 200 "Midnightblue")
         (circle 10 250 "Midnightblue"))
@codeblock{(overlay (circle 50 50 "Midnightblue")
         (circle 40 100 "Midnightblue")
         (circle 30 150 "Midnightblue")
         (circle 20 200 "Midnightblue")
         (circle 10 250 "Midnightblue"))}

@bold{HARD} - Use multiple overlay/offset functions to make a house with an isosceles triangle as a roof, a rectangle as the front of the house, two squares as the windows, and a vertical rectangle as a door

HINT - use a seperate @literal{(overlay/offset)} function for each shape, and nest them to create the house.

  - the syntax for (overlay/offset) is @verbatim{(overlay/offset (shape on top) x-offset y-offset (shape on bottom))}

@(overlay/offset (isosceles-triangle 60 120 "solid" "saddlebrown") 0 55
                (overlay/offset (square 25 'solid "snow") 20 20
                                (overlay/offset (square 25 'solid "snow") -20 20
                                                (overlay/offset (rectangle 20 35 'solid "lime") 0 -22
                                                                (rectangle 100 80 'solid "deepskyblue")))))
@codeblock{(overlay/offset (isosceles-triangle 60 120 "solid" "saddlebrown") 0 55
                (overlay/offset (square 25 'solid "snow") 20 20
                                (overlay/offset (square 25 'solid "snow") -20 20
                                                (overlay/offset (rectangle 20 35 'solid "lime") 0 -22
                                                                (rectangle 100 80 'solid "deepskyblue")))))}

@bold{CHALLENGE} - Overlay four concentric radial-stars. Each one should be a little smaller than the one above it.

@(overlay (radial-star 32 40 50 "outline" "black")
(radial-star 32 30 40 "outline" "black")
(radial-star 32 20 30 "outline" "black")
(radial-star 32 10 20 "outline" "black"))
@codeblock{(overlay (radial-star 32 40 50 "outline" "black")
(radial-star 32 30 40 "outline" "black")
(radial-star 32 20 30 "outline" "black")
(radial-star 32 10 20 "outline" "black"))}
}
 @blog-post["Day 19"]{
Learned map/apply/curry/lambda/compose functions and then worked on organizing and editing the new map/apply katas we worked on last week. Added them to the example.rkt.
                      }
 @blog-post["Day 20"]{
          Learned the game engine and learned how to set the default game to include a custom avatar and enemies. Also worked on making a stop-on-bottom function.
 }
 }
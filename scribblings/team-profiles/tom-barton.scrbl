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
}

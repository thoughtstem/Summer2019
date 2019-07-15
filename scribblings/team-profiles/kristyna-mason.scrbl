#lang scribble/manual

@(require "./common.rkt")

@(bio "Kristyna Mason" 
      "kristyna.png"
      "I started coding in middle school. I am going into my senior year of university as a computer science major with an emphasis in international business.")

@blog{

@blog-post["Day 1"]{
   1. This creates concentric circles.
   @codeblock{(apply cc-superimpose (map circle (range 10 100 20)))}
   2. This creates a series of jack-o-lanterns that grow in size.
   @codeblock{(apply hc-append (map jack-o-lantern (range 20)))}
   3. This creates concentric ellipses.
   @codeblock{(apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))}
 }

@blog-post["Day 2"]{
  Learning how to use git and adding map/apply examples.
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

@blog-post["Day 1 of week 2"]
 {
  @codeblock{(require 2htdp/image)

   "Example 1: Create a solid green right triangle"
   (right-triangle 30 40 "solid" "green")


   "Example 2: Create a solid red STOP sign"

   (overlay
   (text "STOP" 20 "white")
   (regular-polygon 30 8 "solid" "red"))


   "Example 3: Create a hamburger with only ellipses stacked on top of each other. From the top to bottom, make a bun, a slice of lettuce, a slice of tomato, a patty, and another bun." 

   (define (bun)
   (ellipse 80 20 "solid" "goldenrod"))

   (define (lettuce)
   (ellipse 70 14 "solid" "green")) 

   (define (tomato)
   (ellipse 64 14 "solid" "red"))

   (define (cheese)
   (rectangle 60 5 "solid" "yellow"))

   (define (patty)
   (ellipse 64 16 "solid" "brown"))

   (above (bun)
   (lettuce)
   (tomato)
   (cheese)
   (patty)
   (bun))


   "Example 4: Create a surprised sun. Make the sun with an inner yellow circle and an outer star polygon. Create two black ellipse eyes with a centered black ellipse mouth beneath."

   (define (eye)
   (ellipse 5 10 "solid" "black"))

   (define (mouth)
   (ellipse 30 15 "solid" "black"))

   (define (inner-sun)
   (circle 55 "solid" "yellow"))

   (define (outer-sun)
   (star-polygon 20 20 3 "solid" "orange"))

   (define (sun)
   (overlay
   (inner-sun)
   (outer-sun)))

   (overlay/offset
   (eye)
   -20 15
   (overlay/offset
   (eye)
   20 15
   (overlay/offset
   (mouth)
   0 -20
   (sun)))) }
 }
}

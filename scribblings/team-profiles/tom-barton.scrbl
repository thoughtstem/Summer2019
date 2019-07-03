#lang scribble/manual

@(require "./common.rkt")

@(bio "Tom Barton" 
      "tom.png"
      "I started coding my senior year of high school in AP Computer Science. I just finished the intro series of CS classes during my freshman year at the University of Maryand, College Park.  I know Java as well as a little bit of HTML.")

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
}

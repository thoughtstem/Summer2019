#lang scribble/manual

@(require "./common.rkt")

@(bio "Kristyna Mason" 
      "kristyna.png"
      "I started coding in middle school. I am going into my senior year of university as a computer science major with an emphasis in international business.")

@blog{

@blog-post["Day 1"]{
 Camp week at UCSD. 
                    }
 @blog-post["Day 2"]{
 Camp week at UCSD. 
                    }
 @blog-post["Day 3"]{
 Camp week at UCSD. 
                    }
 @blog-post["Day 4"]{
 Camp week at UCSD. 
                    }
 @blog-post["Day 5"]{
 Camp week at UCSD. 
                    }

@blog-post["Day 6"]{
   We started learning Racket and was introduced to git.                    
   1. This creates concentric circles.
   @codeblock{(apply cc-superimpose (map circle (range 10 100 20)))}
   2. This creates a series of jack-o-lanterns that grow in size.
   @codeblock{(apply hc-append (map jack-o-lantern (range 20)))}
   3. This creates concentric ellipses.
   @codeblock{(apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))}
 }

@blog-post["Day 7"]{
  We learned how to better use git and adding map/apply examples.
  1.This makes different color clouds
  @codeblock{ (define nums (range 10))

(define bools (map even? nums))
(define (toColor b)
  (if b "lavenderblush" "red"))

(define colors
  (map toColor bools))

(apply vc-append (map cloud (range 90 100) (range 90 100) colors))}
}

@blog-post["Day 8"]{
 We were assigned tickets and began working on the new-kata-C ticket. We were assigned to create new hard (between 11-20 pairs of parentheseis) katas.                    
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

@blog-post["Day 9"]{
  Fourth of July!
 }

@blog-post["Day 10"]{
  We finished up the new-kata-c ticket with the hard katas and began a new ticket working on the tips and tricks document to make a standard format for formatting all the new proto-katas. 
 }

@blog-post["Day 11"]{
 Camp week at the Fleet Center. 
                    }
@blog-post["Day 12"]{
 Camp week at the Fleet Center. 
                    }
@blog-post["Day 13"]{
 Camp week at the Fleet Center. 
                    }
@blog-post["Day 14"]{
 Camp week at the Fleet Center. 
                    }
@blog-post["Day 15"]{
 Camp week at the Fleet Center. 
                    }
@blog-post["Day 16"]{
 We were exposed to git more and help teach the new students that had their first camp week this week.
                    }
@blog-post["Day 17"]{
 We separated into groups of advanced (those that had taken at least 4 CS courses) students and intermediate students.
 The advanced students were then split into two groups those that wanted to take a more mangerial role, i.e. those
 that wanted to assign tickets, find bugs, frame what the new katas should look like, and those that wanted to dive more
 into the 2HTDP/universe and 2HTDP/image libraries.
                    }
@blog-post["Day 18"]{
 Spent most of the day working creating new tickets and things pertaining to GIF and MEME katas.
                    }
}
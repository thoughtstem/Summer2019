#lang scribble/manual

@section{Intro}

@section{Numbers}
@bold{Example 1}
Adds all odd numbers
@codeblock{
#lang racket
(apply +
  (map (curry + -1)
  (map (curry * 2)(range 1 51))))
(displayln "")
}

@bold{Example 2}
Multiplies the sums of 1-10 and 11-20
@codeblock{
#lang racket
(*(apply +
  (range 1 11))
    (apply +
      (range 11 21)))
(displayln "")
}

@section{Rotating and Superimposing Picts}
@bold{Example 3}
Prints out a list of rotated purple squares with width 30.
@codeblock{
 #lang racket
 (require pict)

 (define nums (range 0 10))
 (define (rotateSquare n)
 (rotate (colorize (filled-rectangle 30 30)
 "purple") n))
 (apply vc-append (map rotateSquare nums))
}

@bold{Example 4}
Create a horizontal and centered circle and rectangle that
are appended where the circle has a radius of 100 and the
rectangle has a width of 100 and a height of 200 with a
range of 100.
@codeblock{
 #lang racket
 (require pict)
 
 (apply cc-superimpose
 (map
 (curry rotate(hc-append (circle 100) (rectangle 100 200))) (range 100))
 )
}

@bold{Example 5}
Create a vertical and centered circle and rectangle that are 
appended where the circle has a radius of 100 and the 
rectangle has a width of 100 and a height of 200 with a range 
of 100.
@codeblock{
 #lang racket
 (require pict)
 
 (apply cc-superimpose
 (map
 (curry rotate(vc-append (circle 100) (rectangle 100 200))) (range 100))
 )
}

@bold{Example 6}
Creates superimposed circles of decreasing size, then puts rotated squares in them.
@codeblock{
 #lang racket
 (require pict)

 (apply cc-superimpose
   (append
     (map (compose circle sqr) (range 10 15))
     (map (curry rotate (rectangle 100 100)) (range 7))))
}
@section{Change Pict Size}
@bold{Example 7}
Creates thermometers of different sizes.
@codeblock{
 #lang racket
 (require pict)

 (define nums (range 0 10))
 (define (rotateSquare n)
 (rotate (colorize (filled-rectangle 30 30)
 "purple") n))
 (apply vc-append (map rotateSquare nums))
}

@bold{Example 8}
Create a row of different colored file picts increasing in
size.
@codeblock{
#lang racket

(require pict)
(apply hbl-append
       (map file-icon (map (curry * 10) (range 5))
         (map (curry * 10) (range 5))
         (list "gray" "orange" "red" "green" "blue")))}

@section{More Picts}
@bold{Example 9}
Defines a function that prints out a jack-o-lantern if the input
is a standard-fish with width 100 and length 50. Else, add 1 to a
list (1 2 3).
@codeblock{
 #lang racket
 (require pict)
 (define nice-fish (standard-fish 100 50))

 (define (func x)
 (if (equal? x nice-fish)
 (jack-o-lantern 100)
 (map add1 (list 1 2 3))))

 (func nice-fish)
}

@bold{Example 10}
Make a vertical line of 6 circles with radius 50 that are the colors of the rainbow
@codeblock{
 #lang racket
 (require pict)
 
 (define (rainbow x)
 (map (lambda (color)
 (colorize x color))
 (list "red" "orange" "yellow" "green" "blue" "purple")))
 (apply vc-append(rainbow (circle 50)))
}

@bold{Example 11}
Make a list of ellipses that alternate colors of the rainbow
@codeblock{
 #lang racket
 (require pict)
  
 (define (colors x)
 (map (lambda (color)
 (colorize x color))
 (list "red" "orange" "yellow" "green" "blue" "purple")))
 (colors (circle 50))
}

@section{Alternating Lists}
@bold{Example 12}
Creates a  list of alternating colors.
@codeblock{       
 #lang racket
 (require pict)
  
 (define nums (range 20))
 (define bools (map even? nums))
 (define (bools->color b)
 (if b "salmon" "midnight blue"))
 (define colors
 (map
 bools->color
 bools))
 colors    
}

@bold{Example 13}
Create a list of fish with alternating colors.
@codeblock{
 #lang racket
 (require pict)

 (define (make-color b)
 (if b "blue" "purple"))

 (define (make-fish c)
 (standard-fish 50 50 #:color c))

 (map (compose make-fish make-color even?) (range 15))
}
#lang scribble/manual

@section{intro}

@subsection{Example 1}
Create a list of 10 clouds whose colors alternate from lavenderblush to red.

@codeblock{
#lang data-sci

(define nums (range 10))
(define bools (map even? nums))
(define (toColor b)
  (if b "lavenderblush" "red"))
(define colors
  (map toColor bools))

(apply vc-append (map cloud (range 90 100) (range 90 100) colors))}

@subsection{Example 2}
Create a list of 10 fishes whose directions alternate between right and left.

@codeblock{
#lang data-sci

(define nums (range 0 10))
(define bools (map even? nums))
 (define (flip b)
  (if b 'right 'left))
(define direction (map flip bools))

(define (fish s)
(standard-fish 100 50 #:direction s #:open-mouth #t #:color "salmon"))

(apply hc-append (map fish direction))}

@subsection{Example 3}
Define a function that prints one of two things: a pumpkin if the input is equal to a list of integers or
"This is not a pumpkin" if otherwise.

@codeblock{
#lang racket
(require pict)

(define printPumpkin (range 2))

(define (func x)
(if (equal? x printPumpkin)
    (jack-o-lantern 100)
    (print "This is not a pumpkin")))
 
(func printPumpkin)
(func circle)}

@subsection{Example 4}
Create a list of 20 angel wings that alternate between 2 colors
-salmon and midnight blue- and 2 directions- left and right.

@codeblock{
#lang data-sci

(define nums (range 20))
(define bools (map even? nums))
(define (bools->color b)
  (if b "salmon" "midnight blue"))
(define colors
  (map
   bools->color
   bools))
(define (make c b)
  (curry colorize (angel-wing 20 30 b) c))
(apply hc-append (map make colors bools))}

@subsection{Example 5}

Add 4 to each integer in the list 1, 2, 3. Multiply each resulting
integer by 2. Multiply the list together, and subtract 1 from the
resulting product. Your final number should be 1679.

@codeblock{
 #lang data-sci
 
 (define (add4 x) (+ x 4))
 (define (multiply2 x) (* x 2))
 (sub1 (apply * (map multiply2 (map add4 (list 1 2 3)))))}

@subsection{Example 6}
Add 1 to each number in 2 lists of 1, 2, 3. In the first list, add all of the numbers together, and, in the second list
subtract the numbers together. Then group the resulting 2 numbers by their remainders when divided by 2 (remainders should
increase from least to greatest).

@codeblock{
 #lang data-sci
 
 (group-by (lambda (x) (modulo x 2)) (list (apply + (map add1 (list 1 2 3))) (apply - (map add1 (list 1 2 3)))))
}

@subsection{Example 7}
Append "a" to a list of "c" "d" and then "b" to a separate list
of "c" "d". Remove "c" from both lists.

@codeblock{
  #lang data-sci
  
 (define (g x) (append (list x) (list "c" "d")))
 (define (removeC x) (remove "c" x))
 (map removeC (map g (list "a" "b")))}

@subsection{Example 8}
Create 2 lists: one with 10 squares that rotate at an increasing degree and
another with 10 arrows that rotate at an increasing degree. Append the two lists
separately in a vertical direction and then append the two lists together to be
side by side.

@codeblock{
#lang data-sci

(define nums (range 0 10))
(define (rotateSquare n)
  (rotate (colorize (filled-rectangle 30 30)
                    "purple") n))
(define (rotateArrow x)
  (rotate (arrow 30 (/ pi 2)) x))
(apply hc-append (list (apply vc-append (map rotateSquare nums)) (apply vc-append (map rotateArrow nums))))}

@subsection{Example 9}
Create a list of 4 thermometers that inrease in size and face
up then down with each thermometer.

@codeblock{
#lang data-sci

(define nums (map (curry * pi) (range 4)))
(define (thermo n r)
 (rotate (thermometer #:stem-height n
               #:bottom-circle-diameter 40
               #:top-circle-diameter 20
               #:mercury-inset 4) r))
 
(apply hc-append (map thermo (range 40 120 20) nums))}

@subsection{Example 10}
Shuffle a list of random picts and then append them in the same row.

@codeblock{
 #lang data-sci
 
 (apply hc-append (shuffle (list (desktop-machine 1)
                                (cloud 100 75)
                                (standard-fish 100 50)
                                (jack-o-lantern 100)
                                (face 'sortof-unhappy)
                                (filled-flash 100 100)
                                (thermometer)
                                (standard-fish 100 50 #:open-mouth #t #:color "olive"))))}
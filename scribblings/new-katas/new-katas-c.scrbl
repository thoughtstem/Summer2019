#lang scribble/manual

@section{intro}
1.This makes different color clouds
  @codeblock{(define nums (range 10))

(define bools (map even? nums))
(define (toColor b)
  (if b "lavenderblush" "red"))

(define colors
  (map toColor bools))

(apply vc-append (map cloud (range 90 100) (range 90 100) colors))}
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
3. This show the functionality of if-else statements by printing a pumpkin or a string
@codeblock{(define printPumpkin (range 2))

(define (func x)
(if (equal? x printPumpkin)
    (jack-o-lantern 100)
    (print "This is not a pumpkin")))
 
(func printPumpkin)
(func circle)}
4. This alternates between orientation and color of angel wings
@codeblock{(define nums (range 20))
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
5.This applies mathematical functions to a list of (1,2,3)
@codeblock{(define (add4 x) (+ x 4))
(define (multiply2 x) (* x 2))
(sub1 (apply * (map multiply2 (map add4 (list 1 2 3)))))}
6. Groups a list by a defined lambda function
@codeblock{(group-by (lambda (x) (modulo x 2))
          (list (apply + (map add1 (list 1 2 3)))(apply - (map add1 (list 1 2 3)))))
}
7. This appends and removes characters from a list
@codeblock{(define (g x) (append (list x) (list "c" "d")))
(define (removeC x) (remove "c" x))
(map removeC (map g (list "a" "b")))}
8. This rotates squares and arrows
@codeblock{(define nums (range 0 10))
(define (rotateSquare n)
  (rotate (colorize (filled-rectangle 30 30)
                    "purple") n))
(define (rotateArrow x)
  (rotate (arrow 30 (/ pi 2)) x))
(apply hc-append (list (apply vc-append (map rotateSquare nums)) (apply vc-append (map rotateArrow nums))))}
9. This creates multiple thermometers then flips them.
@codeblock{(define nums (map (curry * pi) (range 4)))
(define (thermo n r)
 (rotate (thermometer #:stem-height n
               #:bottom-circle-diameter 40
               #:top-circle-diameter 20
               #:mercury-inset 4) r))
 
(apply hc-append (map thermo (range 40 120 20) nums))}
10. This appends and shuffles several picts.
@codeblock{(apply hc-append (shuffle (list (desktop-machine 1)
                                (cloud 100 75)
                                (standard-fish 100 50)
                                (jack-o-lantern 100)
                                (face 'sortof-unhappy)
                                (filled-flash 100 100)
                                (thermometer)
                                (standard-fish 100 50 #:open-mouth #t #:color "olive"))))}
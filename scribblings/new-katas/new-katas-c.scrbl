#lang scribble/manual

@section{intro}
1.This makes different color clouds
  @codeblock{ (define nums (range 10))

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

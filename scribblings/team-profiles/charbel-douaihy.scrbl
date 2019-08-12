#lang scribble/manual
@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt"
          2htdp/image)

@(bio "Charbel Douaihy"
      "no pic"
      "Howdy :) I'm Charbel Douaihy and I just finished my third year of college at UCSD.
I'm a Mathematics and Computer Science major.")


@(define (ear color)
   (ellipse 30 80 "solid" color))
@(define (limb color)
   (ellipse 50 15 "solid" color))
@(define (eye)
   (circle 10 "solid" "black"))
@(define (head color)
   (add-curve
    (overlay/offset (circle 10 "solid" "pink")
                    0 -40
                    (overlay/offset(overlay/offset (ear color)
                                                   20 70
                                                   (overlay/offset(eye)
                                                                  -20 10
                                                                  (overlay/offset
                                                                   (eye)
                                                                   20 10
                                                                   (circle 50 "solid" color))))
                                   20 -40
                                   (ear color)
                                   ))
    35 130 50 -0.5
    70 130 50 1
    "black")
   )

@(define (bunny color)
   (overlay/offset
    (overlay/offset
     (overlay/offset
      (overlay/offset
       (overlay/offset
        (head color)
        0 100
        (ellipse 60 100 "solid" color))
       30 50
       (limb color))
      -30 50
      (limb color))
     30 110
     (limb color))
    -30 110
    (limb color)))

@blog{

 @blog-post["Day 1"]{
  My three map/apply examples are:
  1) To subtract 1 from a list of 0 -> 99
  @codeblock{(map sub1 (range 100))}
  2) A list of 20 clouds of width 100 and height ranging from 0 to 19
  @codeblock{(map (curry cloud 100)(range 20))}
  3) A spiral!
  @codeblock{(apply cc-superimpose (map (compose circle sqr) (range 20)))}
 }

 @blog-post["Day 2"]{
  Branching examples were done.
  Another map/apply example:
  @codeblock{(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}
  @codeblock{(define (f x) (+ x 4))
   (apply * (map f (list 1 2 3)))}

  @codeblock{(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}
  @codeblock{(define (g x) (append (list x) (list "c" "d")))
   (map g (list "a" "b"))}
  @codeblock{(map shuffle (list (list "c" "o" "d" "e")))}
  @codeblock{(map (curry angel-wing 100 100) (list #t #f))}
  @codeblock{(group-by (lambda (x) (modulo x 2)) (list (apply + (map add1 (list 1 2 3)))))}
  @codeblock{(map sub1 (list (count even? (list 1 2 3 4 5))))}
  @codeblock{(map circle (shuffle (range 10 100 10)))}
  @codeblock{(define nice-fish (standard-fish 100 50))

   (define (func x)
   (if (equal? x nice-fish)
   (jack-o-lantern 100)
   (map add1 (list 1 2 3))))

   (func nice-fish)}
  @codeblock{(apply cc-superimpose(list (face* 'worried 'large #f default-face-color 6)(cloud 125 25 "red")))

  }
 }

 @blog-post["Day 3"]{
  More proto-kata examples using map/apply/curry and picts

  1. Appending 2 lists together
  @codeblock{(append (list 3 4) (list "a" "b"))}

  2. Compare two lists and output true whenever they find different numbers in a certain index
  @codeblock{
   (map (negate =) (list 1 2 1) (list 1 2 3))
  }

  3. Using compose to do two functions on a list of 3 elements
  @codeblock{
   (map (compose (curry * 3) (curry + 5)) (list 5 6 7))
   (map (compose (curry + 5) (curry * 3)) (list 5 6 7))}

  4. Defining two different picts and linking them with arrows
  @codeblock{
   (define bluey
   (apply cc-superimpose(list (filled-ellipse 50 100 #:color "blue")
   (filled-ellipse 25 50 #:color "red"))))
   (define redy
   (apply cc-superimpose(list (filled-rounded-rectangle 60 60 -0.35
   #:color "red"
   #:angle (/ pi 4)
   #:border-width 4)
   (filled-rounded-rectangle 30 30 -0.35
   #:color "blue"
   #:angle (-(/ pi 12))
   #:border-width 2))))

   (pin-arrows-line 25
   (hc-append 150 bluey redy)
   bluey cc-find
   redy cc-find
   #:line-width 2.5
   #:color "yellow"
   #:start-angle (/ pi 4)
   #:end-angle (/ pi 4))}
 }
 @blog-post["Day 4"]{
  Today, we added a "How To Add Your Blog" section to Tips&Tactics. We also added 3 tactics to the tactics-variances "a" page.
 }


 @blog-post["Day 5"]{
  This is how to add two bunnies, one that is green and one that is gray! :)

  

  @(beside (bunny "gray") (bunny "green"))
  @codeblock{
   (define (ear color)
   (ellipse 30 80 "solid" color))
   (define (limb color)
   (ellipse 50 15 "solid" color))
   (define (eye)
   (circle 10 "solid" "black"))
   (define (head color)
   (add-curve
   (overlay/offset (circle 10 "solid" "pink")
   0 -40
   (overlay/offset(overlay/offset (ear color)
   20 70
   (overlay/offset(eye)
   -20 10
   (overlay/offset
   (eye)
   20 10
   (circle 50 "solid" color))))
   20 -40
   (ear color)
   ))
   35 130 50 -0.5
   70 130 50 1
   "black")
   )

   (define (bunny color)
   (overlay/offset
   (overlay/offset
   (overlay/offset
   (overlay/offset
   (overlay/offset
   (head color)
   0 100
   (ellipse 60 100 "solid" color))
   30 50
   (limb color))
   -30 50
   (limb color))
   30 110
   (limb color))
   -30 110
   (limb color)))

   (beside (bunny "gray") (bunny "green"))}
  @blog-post["Day 6/7"]{
   Worked on making tickets (both internal and external) for other interns to work on while deciding a vision for a new set of teaching programs and katas. The ones
   we decided on doing were a kata collection of memes (using images functions from fundamentals) and a collection of animations for gifs.
  }

  @blog-post["Day 8/9"]{
   Continued working on a more management role, by taking care of tickets/issues and pull requests. Cleaned up the Kata Collections and
   Languages folder by removing "my-katas" and "my-lang" from these folders respectively. Dealt with clearing the problems that were caused
   from doing that and made sure that their removal won't cause future problems. Also tested the new Katas that were added to make sure that they were still working. 
  }

  @blog-post["Day 10"]{
   Worked on starting a new Kata Subsection for Game Katas. That kata section would teach how to make a Snake Game
   in racket using the 2htdp/images and 2htdp/universe libraries. I worked and finished the first two katas that had
   the snake block appear and move automatically from left to right. I also practiced some interview questions with
   the rest of the group.}

  @blog-post["Day 11"]{
   Finished Kata 3, which had the snake move automatically in any direction and manipulate the direction its moving using the
   arrow keys. Also worked on more interview questions.
  }

  @blog-post["Day 12"]{
   Mostly worked on interview questions since the internet wasn't working at the library.
  }
  @blog-post["Day 13"]{
   Worked on more coding interview questions and took care of Github related problems (like unmerged pull requests and unclosed issues).
  }
  @blog-post["Day 14"]{
   Talked about lisp and different levels of programming languages. Learned the usefulness of macro in racket by doing examples like
   define/public and define/debug.
  }

 }
}



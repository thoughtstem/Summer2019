#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/paraphrase.rkt")

@(bio "Rahul Kulkarni" 
      "rahulpic.jpg"
      "Going into his senior year of high school. Proficient in C, Java, Python, Javascript.")

@blog-post["Day 1"]{
  Learned about DCog and studied the Chinese room and Museum notebook thought expirements. I realized it's beneficial to distribute your cognitive load with your peers, your enviornment, or both!
}

@blog-post["Day 2"]{
  Learned the difference between recognition and recall. There isn't really a distnct difference, it's more of a spectrum. Learned ASL. I have recall over the letters in my name, but not much else.
}

@blog-post["Day 3"]{
  Learned about refactoring code. I saw the benefits of abstracted functions when we were able to streamline everyone's blog posts with a single function. Researched broca's region. Learned that learning programming is more like learning a forign language than doing math. I never would have thought about it that way!
}

@blog-post["Day 4"]{
New Tactic: paraphrase - 06/20/19
@(tactic->scribble
  (paraphrase 'Coach
                     'Team
                     'Team-Computers
                     'the-challenge-card
                     'the-whiteboard
                     'the-markers))
}

@blog-post["Day 12"]{
this is my third trivial change
}

@blog-post["Day 4"]{
made some examples of racket code using map, apply, and curry:
                    
 @codeblock{
   ;create an "atom" shape with ovals
   (apply cc-superimpose
       (map
            (curry rotate (ellipse 40 80)) (range 10)
       )
   )
 }

 @codeblock{
   ;stack a bunch of rotated fish
   (apply cc-superimpose
       (map
            (curry rotate (standard-fish 100 50)) (range pi)
       )
   )
 }

 @codeblock{
   ;rotate a bunch of squares to create a circle in the middle
   (apply cc-superimpose
       (map
            (curry rotate (rectangle 100 100)) (range 25)
       )
   )
 }

 @codeblock{
   ;create supermposed decreasing circles, then put squares rotated squares in them
   (apply cc-superimpose
       (append
            (map
             (compose circle sqr) (range 10 15)
            )
            (map
             (curry rotate (rectangle 100 100)) (range 7)
            )
       )
   )
 }

  @codeblock{
   ;add all even numbers
   (apply +
       (map (curry * 2)
            (range 1 51)
       )
   )
   (displayln "")
 }

  @codeblock{
   ;add all odd numbers
   (apply +
       (map (curry + -1)
            (map (curry * 2)
                 (range 1 51)
            )
       )
   )
   (displayln "")
 }

  @codeblock{
   ;multiply the sums of 1-10 and 11-20
   (*
    (apply +
        (range 1 11)
   )
    (apply +
        (range 11 21)
   )
  )
  (displayln "")
 }

  @codeblock{
   ;calculate the sum of all squares 1-100
   (apply +
       (map sqr
            (range 1 101)
       )
   )
   (displayln "")
 }

  @codeblock{
   ;multiples all numbers 1-10
   (apply *
       (range 1 11)
   )
   (displayln "")
 }
}


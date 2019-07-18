#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Kartiki Gaur" 
      "kg.png"
      "Hi! I just finished my first year of college at UC Berkeley. I started coding during my freshman year of college.
I am Cognitive Science major, so I am interested in the intersection between neuroscience and CS and, more specifically, neural computation. 
")

@blog{

@blog-post["Day 1"]{
DCog

I enjoyed learning about Distributed Cognition during the first day of internship. I felt the following website really helped me understand the topic. DCog is the idea that outside environments and rescources reinforce one's learning. An example of this would be flow states, in which a quiet, outdoor environment is more conducive to the formation of a flow of concentration.

@url{https://www.sciencedirect.com/topics/computer-science/distributed-cognition})}

@blog-post["Day 2"]{
Recognition vs. Recall vs. Fluency

Today, we learned about recall vs. recognition. We applied our knowledge of this by playing an ASL memory game. We learned that we were able to recall symbols that were either the most unique or relevant to use. Eventually, by playing the game for a few rounds, we were able to recognize more symbols. We also learned about how fluency is the highest level of recall.}

@blog-post["Day 3"]{
Refactoring, Broca's Area, fMRI Studies

Refactoring is the process of changing code without changing the external structure. Broca's Region is where speech is produced. fMRI Studies show that coding languages are processed in the same part of the brain as "natural languages."}

@blog-post["Day 4"]{
New Tactic: Code Anatomy Race 

@(tactic->scribble
  (code-anatomy-race 'Coach
                     'Team
                     'Team-Computers
                     'both-challenge-cards
                     'both-whiteboards
                     'the-markers))
}

@blog-post["Day 5"]{
Ask Me Anything Day:

Today, we learned more about the difference between working at big companies vs. working at startups. I found it interesting to learn more about the fast-paced environments that startups have. I also got to learn more about different coding languages paradigms and, more specifically, functional programming vs. object-oriented programming.
}

@blog-post["Day 6"]{
Today, we came up with 3 examples for map/apply that may be translated into new katas.
@codeblock{(map sub1 (range 10))}
  =(-1 0 1 2 3 4 5 6 7 8)
@codeblock{(map max (range -5 5))}
  =(-5 -4 -3 -2 -1 0 1 2 3 4)
@codeblock{(apply gcd (map sub1 (range -10 11 2)))}
  = 1}

@blog-post["Day 7"]{
Today, we learned about git branches.
 Another apply/map example:
 @codeblock{(define (f x) (+ x 4))
(apply * (map f (list 1 2 3)))}
  =210
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

@blog-post["Day 9"]{
Today, we added a "How To Add Your Blog" section to Tips&Tactics. We also added 3 tactics to the tactics-variances "a" page.}

@blog-post["Day 10"]
{Code the letter T.
@codeblock{(add-line (line 100 0 "black") 50 0 50 50 "outline")}}
{Code a stick figure
@codeblock{
(define (head)
  (circle 30 "outline" "black"))
(define (body)
  (add-line(head) 30 60 30 200 "black"))
(define (arms)
  (add-line (body) 0 100 70 100 "black"))
(define (legs)
  (add-line(add-line(arms)
                    30 200 10 240 "black")
                         30 200 50 240 "black"))
(define (stick-person)
  (legs))  
(stick-person)}}

@blog-post["Day 11"]
Today, we coded a flower that changes between multiple colors. 
@codeblock{
(define (shape tick)
  (pulled-regular-polygon 50 5 1 140 "solid" (find-color tick)))

(define (find-color tick)
  (cond ((< (modulo tick 60) 10) "red")
         ((< (modulo tick 60) 20) "orange")
         ((< (modulo tick 60) 30) "yellow")
         ((< (modulo tick 60) 40) "green")
         ((< (modulo tick 60) 50) "blue")
         ("purple")))

(big-bang 0
  (on-tick add1)
  (to-draw shape))}}
 




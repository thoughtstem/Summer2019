#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-v2.rkt"
          "../new-tactics/disintegrate.rkt"))


@require[@for-label[Summer2019
                    racket/base]]
@(bio "Paul Tran" 
      "paul-tran.png"
      "I started coding during my junior year of high school. I know Java. I will be a senior at Westview High School this year")

@blog{

@blog-post["Personal Philosophy"]{
"having good socks is a way of life".
}
      
@blog-post["Day 1"]{
Code the letter T.
@codeblock{(add-line (line 100 0 "black") 50 0 50 50 "outline")}
Code a stick figure.
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
(stick-person)
}}}

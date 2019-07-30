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

}
      
@blog-post["Day 1 7/15/19"]{
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
}}
<<<<<<< HEAD
@blog-post ["Day 6 7/29/19"]
  I refreshed my memory on how to update my blog and push and pull. }
=======
@blog-post ["Day 6 7/29/19"]{
Today we paired up and then decided what part of the Kata Collection that we wanted to do. 3 of the pairs decided to do my-data-scis and so we all
sat together and worked on it together. I had one computer that didn't work, and on the next, it took a lot of work to get git to work, but once I
did get it to work, it was smooth sailing from there. My task was to add stimuli to the my-data-sci katas and I managed to do that, but not before
running into problem with pushing. With my peers as well as Stephen's help, I was able to get it to work. Today I realized how much easier it is to
solve technical problems when I have the help of my peers to help me
}}
>>>>>>> 4561a49808b5499936f410047d2ffb9a7b2cfe32

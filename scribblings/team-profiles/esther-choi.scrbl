#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Esther Choi" 
      "no pic"
      "Hi, my name is Esther and I'm an upcoming senior at Torrey Pines High School. I like to read and swim.")

@blog{

@blog-post["Day 1"]{
Second week of Project Week. My blog got deleted halfway through the week so I have nothing saved!
But throughout my first week, I worked on exploring the 2htdp/images and universe libraries and
finished tickets relating to them. I also learned about big bang and ticks and how to apply them
in my code. I think I made a kata on my last day where the shapes would move while flashing colors
when you pressed arrow keys, but I can't find it. 
On the first day of the second week I got a further understanding on how to use terminal to update
and pull and commit my files.
 }


@blog-post["Day 3"]{
Allison and I cleaned up katas in my-data-sci-lang. We made example katas and fixed problems in existing ones,
although there weren't many. But we finished the ticket and I gained more experience in picts, apply and map.

One of the errors I fixed was in a kata like this:
(define-example-code Summer2019/Languages/my-data-sci-lang/main square-arrow-003
  (define nums (range 0 10))
  (define (rotateSquare n)
    (rotate (colorize (filled-rectangle 30 30)
                      "purple") n))
  (define (rotateArrow x)
    (rotate (arrow 30 (/ pi 2)) x)))
  (apply hc-append (list (apply vc-append (map rotateSquare nums)) (apply vc-append (map rotateArrow nums))))
  )

  (define nums (range 0 10))
  (define (rotateSquare n)
    (rotate (colorize (filled-rectangle 30 30)
                      "purple") n))
  (define (rotateArrow x)
    (rotate (arrow 30 (/ pi 2)) x))
  (apply hc-append (list (apply vc-append (map rotateSquare nums)) (apply vc-append (map rotateArrow nums))))
  
 }

 
@blog-post["Day 4"]{
I worked on tickets. One was about cleaning up my-web-lang and another for cleaning up my-GIFs-lang.
I decided to work for the rest of the day and Friday on my-memes-lang. 
 }

@blog-post["Day 5"]{
Today I'm planning to work on my-memes-lang.

This is later in the day, and I've learned how to arrange the text and pictures around using code. 
 }
 }



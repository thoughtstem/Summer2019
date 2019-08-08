#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt"
          2htdp/image)

@(bio "Maggie Y☺u"
      "welcome.png"
      "Hey! My name is Maggie and I go to Madison high school.")

@blog{

 @blog-post["✰Day 1 (8/5/19)✰"]{
  I learned about the interview process and how to write code to remove duplieates from a signly linked list.
  Like what weshould expect from a coding interview and although I didn’t really understand the coding problems
  that I might have to do, the information that I received was very useful.After that we maked some fundamentals :)
 }
  
 @blog-post["✰Day 2(8/6/19)✰"]{
 Today, I worked on setting up my blog and discussed coding interviews and "Cracking the Coding Interview" questions.Here's some cool code from yesterday!}

@bold{EXAMPLE:}

 @(above 
 (isosceles-triangle 60 120 "solid" "lightpink")

 (overlay/offset (square 25 'solid "lightblue") 20 20
                 (overlay/offset (square 25 'solid "lightblue") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "pink") 0 -20
                                                 (rectangle 100 80 'solid "lightyellow")))))
   @codeblock{#lang racket
(require 2htdp/image)

(above 
 (isosceles-triangle 60 120 "solid" "lightpink")

 (overlay/offset (square 25 'solid "lightblue") 20 20
                 (overlay/offset (square 25 'solid "purple") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "pink") 0 -20
                                                 (rectangle 100 80 'solid "lightyellow")))))}}
@blog-post["✰Day 3 (8/7/19)✰"]{
Sadly, the internet is off today so we continued to learned about linked list and coding using racket. I also created my github account.
}



@bold{✰Growth V.S Fixed✰}

@codeblock{
 -Growth-
People with a growth mindset have an underlying belief that their learning and intelligence
can grow with time and experience.

-Fixed-
People with fixed mindset, they
believe that their basic abilities, intelligence, and talents are fixed traits.
}
@blog-post["⋆What I Learned⋆"]{
What I learned is that regardless where you at skillswise you can always growth
and if you believe you can't do it then you will be in that mindset. Even through
I never have any experience in coding, I was able to learn something from this
internship experience by teaching kids and learn from expertises in this field.
Most importantly, get to meet amazing people and learn from every individuals. 
}

@blog-post["✰Day 4 (8/8/19)✰"]{
We start off with a little warm up like}
@codeblock{
✰Take a binary tree and return a list for each “depth level”
✰Write a function to take a list of numbers and return the average
✰Write a function that return true if a list contains the string “apple” 
✰Write a function to take a list of strings and return the longest 
}



@bold{Thank Y☺U}


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

@(text/font "W E L C O M E ☺ " 50 "lightblue"
             #f 'modern 'italic 'normal #f)


 @bold{•Personal Philosophy•}

 @italic{ ☾The world is your canvas sketch the picture you desire the universe will paint the rest ☽}


 

@(text/font "p ⭑ r ⭑ o ⭑ j ⭑ e ⭑ c ⭑ t  w ⭑ e ⭑ e ⭑ k  o ⭑ n ⭑ e " 20 "mediumyellow"
             #f 'modern 'italic 'normal #f)


 
 @blog-post["✰Day 1 (8/5/19)✰"]{
  I learned about the interview process and how to write code to remove duplieates from a signly linked list.
  Like what weshould expect from a coding interview and although I didn’t really understand the coding problems
  that I might have to do, the information that I received was very useful. After that we maked some fundamentals :)
 }

 @(text/font "H E L L ☺  W O R L D" 25 "black"
             #f 'modern 'italic 'normal #f)
 
@codeblock{
  (text/font "H E L L ☺  W O R L D" 25 "black"
             #f 'modern 'italic 'normal #f)}
  
 @blog-post["✰Day 2(8/6/19)✰"]{
 Today, I worked on setting up my blog and discussed coding interviews and "Cracking the Coding Interview" questions. Here's some cool code from yesterday!}

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

@bold{making a ellipse by using underlay to create this!}

@(underlay (ellipse 10 60 40 "red")
            (ellipse 20 50 40 "lightblue")
            (ellipse 30 40 40 "pink")
            (ellipse 40 30 40 "yellow")
            (ellipse 50 20 40 "red")
            (ellipse 60 10 40 "purple"))


@codeblock{ (underlay (ellipse 10 60 40 "red")
            (ellipse 20 50 40 "lightblue")
            (ellipse 30 40 40 "pink")
            (ellipse 40 30 40 "yellow")
            (ellipse 50 20 40 "red")
            (ellipse 60 10 40 "purple"))}



@blog-post["✰Day 4 (8/8/19)✰"]{
We start off with a little warm up like}
@codeblock{
✰Take a binary tree and return a list for each “depth level”
✰Write a function to take a list of numbers and return the average
✰Write a function that return true if a list contains the string “apple” 
✰Write a function to take a list of strings and return the longest
}

@(above
   (star 20 "solid" "pink")
   (scale/xy 1 1/2 (flip-vertical (star 20 "solid" "gray"))))


@blog-post["✰Day 5 (8/9/19)✰"]{
We did a little reading this morning on Paul Graham “Beating The Averages,” in the section
The Blub Paradox, which talks about the reason he uses LIPS a programing language. He
reveals that using an high-level programing languages that most people don’t use is a good 
since is not common and sometimes people are familiar in the language is harder for them to
change it. In reality what programming langauge you use it mainly depends on YOU. 
}


@italic{Here are some cool fundamentals!}

@(scale
   40
   (color-list->bitmap
    (list "pink" "lightblue" "lightyellow")
    3 1))

@codeblock{(scale
   40
   (color-list->bitmap
    (list "pink" "lightblue" "lightyellow")
    3 1))}

@italic{•Quotes•}

@blog-post{
 "Don't worry about what anybody else is going to do. The best way to predict the future is to invent it."

- Alan Kay}

        

@bold{Thank Y☺U}

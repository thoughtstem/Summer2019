#lang scribble/manual

@(require "./common.rkt"
           ts-tactics)

@(bio "Maggie Yu" 
      "maggie.jpg"
      "Hey! My name is Maggie and I go to Madison high school.")

@blog{

@blog-post["Day 1 (8/5/19)"]{
      I learned about the interview process and how to write code to remove duplieates from a signly linked list.
      After that we maked some fundamental.
      }
 #lang fundamentals
     (text/font "Welcome :D" 24 "lightblue"
                 "Gill Sans" 'swiss 'normal 'bold #f)
@blog-post["Day 2"]{
      Worked on setting up my blog. Here's some cool code from yesterday!
      This is the format for the map function:
  @codeblock{(map _____ _____)}
The map function applies the function (in the first space) to each item in the list (in the second space).
It also returns a list.
@codeblock{(apply hbl-append
       (map file-icon (map (curry * 10) (range 5))(map (curry * 10) (range 5))(list "gray" "orange" "red" "green" "blue")))}
This block of code uses the map and apply functions to create a row of file icons that are
  aligned on the bottom line and directly next to each other.

 }

}

#lang scribble/manual

@(require "./common.rkt"
           ts-tactics)

@(bio "Sabrina Fogel" 
      "sabrina.jpg"
      "Hey! My name is Sabrina and I go to The Bishop's School.")

@blog{

@blog-post["Day 1"]{
      Learned more about Racket, as well as powertools like map and apply.
 }
@blog-post["Day 2"]{
      Worked on setting up my blog. Here's some cool code from yesterday!
      This is the format for the map function:
  @codeblock{(map _____ _____)}
The map function applies the function (in the first space) to each item in the list (in the second space).
It also returns a list.
@codeblock{(apply hbl-append
       (map file-icon (map (curry * 10) (range 5))(map (curry * 10) (range 5))(list "gray" "orange" "red" "green" "blue")))}
This block of code uses the map and apply functions to create a row of file icons that are aligned and directly next to each other.

 }

}
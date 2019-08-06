#lang scribble/manual

@(require "./common.rkt"
           ts-tactics)

@(bio "Sabrina Fogel" 
      "sabrina.jpg"
      "Hey! My name is Sabrina and I go to The Bishop's School.")

@blog{

@blog-post["Week 1 Day 1"]{
      Learned more about Racket, as well as powertools like map and apply.
 }
@blog-post["Week 1 Day 2"]{
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
@blog-post["Week 1 Day 3"]{}
@blog-post["Week 1 Day 4"]{}
@blog-post["Week 1 Day 5"]{}
@blog-post["Week 2 - Camp Week at Sage Canyon"]{}
@blog-post["Week 3 Day 1"]{
 Back at it again! Our starting challenge for the day was to write code that would remove duplicates from a singly linked list.
 Before today, I didn't know what a singly linked list was, but now I do (at least, more than I did yesterday). Maggie and I
 started working on the new katas for the fundamentals kata collection.}
@blog-post["Week 3 Day 2"]{}
@blog-post["Week 3 Day 3"]{}

 }

}
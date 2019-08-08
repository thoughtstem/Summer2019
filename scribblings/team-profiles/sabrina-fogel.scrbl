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
This block of code uses the map and apply functions to create a row of file icons that are
  aligned on the bottom line and directly next to each other.
  }
@blog-post["Day 3"]{
      We worked more on creating simple katas that use the map, curry, and apply functions. Here are some examples:
      @codeblock{(map string-append (list "Apple" "Banana")(list "Hello" "World"))}
      This code creates a list of two strings, one saying "AppleHello" and the other saying "BananaWorld". This is because the map function applies
 the string-append function to the first items of each list ("Apple" and "Hello") and the second items of each list ("Banana" and "World").

 
 In addition to creating more code, we also reviewed a typical 7-stage development cycle:
 
 1. Pull from master so that you have the most up-to-date version of the code. (git pull origin master)
 2. Create a new branch (preferably with a recognizable name). This is where your work will be done so that you don't automatically change the master code. (git branch "name")
 3. Make the changes to the code! Be sure you're on your branch while you do this. (git checkout "name")
 4. Time to start pushing your changes! Start by adding the files that you've changed. (git add *filename*)
 5. Commit your changes with a message explaining what you've changed. (git commit -m "Message")
 6. Almost done! Push your branch back to the master. (git push origin *branch name*)
 7. On GitHub, create a pull request. Resolve any problems and then you're done!
 }
@blog-post["Day 4"]{
Fourth of July!
 }
@blog-post["Day 5"]{
      Our group continued to work on easy katas for map and apply.
 }
@blog-post["Day 6 through Day 10 - Camp Week at Sage Canyon"]{}
@blog-post["Day 11"]{
 Back at it again! Our starting challenge for the day was to write code that would remove duplicates from a singly linked list.
 Before today, I didn't know what a singly linked list was, but now I do (at least, more than I did yesterday). Maggie and I
 started working on the new katas for the fundamentals kata collection.}
@blog-post["Day 12"]{
Today we worked more on creating fundamental katas. For example:
@codeblock{(text/font "Hello, human" 24 "chartreuse" "Gill Sans" 'swiss 'normal 'bold #f)}
This code creates the words "Hello, human" in size 24, chartreuse, Gill Sans lettering.
@codeblock{(define-example-code fundamentals 028-maggie-sabrina 
 (overlay
 (circle 10 "solid" "white")
 (circle 20 "solid" "blue")
 (circle 30 "solid" "red")
 )}
This code creates a bulls-eye shape, with a red outside, blue middle, and white inside circle.
Today's challenge was to find the kth-to-last element of a singly linked list.
 }

 }

}
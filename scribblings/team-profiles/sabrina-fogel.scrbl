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
 }
@blog-post["Day 13"]{
Wifi was out at the library today, so we spent most of the day working on interview-like coding challenges! The one I focused on was
to write code that would mash together a list of strings using recursion (so that the input of '("apple" "orange") would return
"appleorange"). Here is the code (in Racket) that I used to solve this challenge.
@codeblock{(define (mash l)
           (if (empty? l)
           ""
           (string-append (first l) (mash(rest l)))
           )
           )}        
}
@blog-post["Day 14"]{
Today we got some new challenges. I worked on a couple; the first asked for a function to take a number and
  return a list of numbers between 0 and that number, non-inclusive. I used Python and came up with this algorithm:
@codeblock{def upTo(x):
  l = []
  for i in range(x):
    l.append(i)
  return l}
Another challenge we were given was to write a function that would take in a list of strings and return true if the list
contained the string "apple". Again using Python, I created this:
@codeblock{def apple(l):
  b = False
  for i in range(len(l)):
    if l[i] == "apple":
      b = True
  return b}
Both of these challenges could be done both with loops (as I did it) and recursively. However, I prefer to use loops, since
they seem more logical to me.
In terms of writing katas for the fundamentals language, Maggie and I created some more examples. Here is a function we wrote that
would create a stop sign using the overlay function (which takes two shapes and puts the first one over the second).
@codeblock{(define-example-code fundamentals 029-maggie-sabrina
    (overlay
     (text/font "STOP" 45 "white" "Gill Sans" 'swiss 'normal 'bold #f)
     (regular-polygon 60 8 "solid" "red"))
    )}
}
@blog-post["Day 15"]{
Last day of learning week! Today we read an essay called "Beating the Averages" by Paul Graham. This essay
  covered Lisp and, more specifically, macros— what they are, and how/when to use them.
Macros (or at least, my understanding of macros) help programmers create new ways of using the code, either by creating new
functions or other things like loops. For example, we created a macro that would run a program and output the fact that the
program was called.
@codeblock{(define-syntax-rule (define/debug (f-name args ...)
                      bodies ...)
  (begin

    (define (f-name args ...)
      (displayln (~a 'f-name " was called."))
      bodies ...)
   ))

(define/debug (sum2)
  (+ 2 2))

(sum2)}
In this example, the function sum2 is defined using define/debug, which isn't the normal way of defining a function. However,
because we told the computer what define/debug meant earlier in the code, it was able to understand the definition and call
sum2 without error.
}
}
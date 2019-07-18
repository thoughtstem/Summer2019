#lang scribble/manual

@(require "./common.rkt")

@(bio "Titan Ngo" 
      "titan.png"
      "My name is Titan. I'm from Orange County but will be staying in San Diego for the summer!")

@blog{

@blog-post["Summer Camp at SDSU"]{
"First week of ThoughtSTEM Summer Camp was a good experience. I tried my best to cater to my students
  previous knowledge and their feedback on my teaching. I learned a lot dealing with a mix of motivated and
  less-motivated students in the same group. I especially enjoyed working with my fellow team leaders and head coach
  and discussing teaching methods with them."}

 
@blog-post["Day 1 - the Library"]{
"Today we were taught how to use the 2htdp/image library. I wrote my own katas with my partner, Kristyna, below.

@codeblock{(require 2htdp/image)

"Example 1: Create a solid green right triangle"
(right-triangle 30 40 "solid" "green")


"Example 2: Create a solid red STOP sign"

(overlay
 (text "STOP" 20 "white")
 (regular-polygon 30 8 "solid" "red"))


"Example 3: Create a hamburger with only ellipses stacked on top of each other. From the top to bottom, make a bun, a slice of lettuce, a slice of tomato, a patty, and another bun." 

(define (bun)
  (ellipse 80 20 "solid" "goldenrod"))

(define (lettuce)
  (ellipse 70 14 "solid" "green")) 

(define (tomato)
  (ellipse 64 14 "solid" "red"))

(define (cheese)
  (rectangle 60 5 "solid" "yellow"))

(define (patty)
  (ellipse 64 16 "solid" "brown"))

(above (bun)
       (lettuce)
       (tomato)
       (cheese)
       (patty)
       (bun))


"Example 4: Create a surprised sun. Make the sun with an inner yellow circle and an outer star polygon. Create two black ellipse eyes with a centered black ellipse mouth beneath."

(define (eye)
  (ellipse 5 10 "solid" "black"))

(define (mouth)
  (ellipse 30 15 "solid" "black"))

(define (inner-sun)
  (circle 55 "solid" "yellow"))

(define (outer-sun)
  (star-polygon 20 20 3 "solid" "orange"))

(define (sun)
  (overlay
   (inner-sun)
   (outer-sun)))

(overlay/offset
 (eye)
  -20 15
(overlay/offset
 (eye)
 20 15
(overlay/offset
 (mouth)
 0 -20
 (sun)))) }}


@blog-post["Day 2 and 3 - the Office"]{
"Steven let us choose between two paths to pursue: working with the 2htdp/universe and understanding the code hands-on OR
joining a team of managers to manage other interns. I chose to work with the code. So far, it has been quite enjoyable; along with
two other interns, we have written quite a few katas. It was fun breaking down the code and exploring this versatile library
together as well as thinking of different concepts to teach through which katas. I look forward to learning more and
writing more katas."}

}
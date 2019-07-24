#lang scribble/manual

@(require "./common.rkt")

@(bio "Titan Ngo" 
      "titan.png"
      "Hullo welcome.")
      
@blog{

@blog-post["Summer Camp at SDSU"]{
The first week of ThoughtSTEM Summer Camp was a good experience. I tried my best to cater to my students
  previous knowledge and their feedback on my teaching. I learned a lot dealing with a mix of motivated and
  less-motivated students in the same group. I especially enjoyed working with my fellow team leaders and head coach (Emily)
  and discussing teaching methods with them.}

 
@blog-post["Day 1 - the Library"]{
Today we were taught how to use the 2htdp/image library. I wrote my own katas with my partner, Kristyna, below.

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
Stephen let us choose between two paths to pursue: working with the 2htdp/universe and understanding the code hands-on OR
joining a team of managers to manage other interns. I chose to work with the code. So far, it has been quite enjoyable; along
with two other interns, we have written quite a few katas. It was fun breaking down the code and exploring this versatile library
together as well as thinking of different concepts to teach through which katas. I look forward to learning more and
writing more katas.}

@blog-post["Day 4 and 5 - Office/Library"] {
Stephen gave us the task and thinking of a game to teach through katas. We decided on a Galaga style of game, where the user
controls a plane that moves left and right and is able to shoot bullets. However, many hours into the project, we decided
to leave it unfinished because 1) the learning curve was too high, as the game was too difficult to create and 2) the code
was to long to fit on any sort of kata. We still accomplished quite a lot from it though; we became much more familiar
with 2htdp/universe. Also, we figured out how to add things to the world's state, as in add things to lists, such  as
multiple bullets to the plane game. We struggled with this concept for a long, long time. In the current last hour of this
project week, we are churning out a set of katas that teach how to make a mouse-interactive eyeball. And because of how much
we have worked with the library, it's coming together pretty quickly.

With these two kata sets, I came up with the idea of making a brand new kata collection called "Game". In this collection,
 we hope to provide sets where each set teaches how to build a final game-like product.}

@blog-post["Library - July 22"] {
With a new group of interns, Stephen advised me to step up with Kristyna and help lead the overall vision/organization of
the repository, similarly to what Kristyna's group did last week. So far, it has been very different. Instead of spending my time
writing katas, hands-on with the 2htdp libraries, I have been organizing the relatively messy repository. Kristyna and I
  have been handling pull requests and questions, and I hope to start making tickets along with her tomorrow.}

@blog-post["Library - July 23"] {
I made my first ticket today, and the repo looks quite nicer, with updated READMEs and better
naming conventions. I spent quite a while today trying to figure out how to add a new kata to the website through examples.rkt
and katas.rkt. After some struggle, I finally got it working! Through detailed READMEs, code comments, and new tickets I make,
  I hope to spread what I learned so we can start building the website and organizing the katas into nice "collections", as
  they are named.}

@blog-post["Library - July 24"] {
Today Stephen allowed partner pairs to choose a kata collection they will be in charge of. Though I am not choosing a library
to work on since Kristyna and I agreed that we should be overlooking the overall repo, I am channeling my still-alive
  passion of the game katas and 2htdp/universe library in guiding the partner pair in charge of my-game-katas the same way
  Stephen had helped my group and me last week.

 A lot of the katas are finally being formatted to be built into a displayable website.

 A lot of tickets were made by Stephen, Kristyna, and me, and I feel that we are making a lot of progress just cleaning up
  the repo and expanding the kata collections with this new group delegation.}
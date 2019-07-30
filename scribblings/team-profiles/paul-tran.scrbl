#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-v2.rkt"
          "../new-tactics/disintegrate.rkt")


@(bio "Paul Tran" 
      "paul=tran.jpg"
      "I started coding during my junior year of high school. I know Java. I will be a senior at Westview High School this year")

@blog{

 @blog-post["Personal Philosophy"]{

 }
      
 @blog-post["Day 1 7/15/19"]{
  Code the letter T.
  @codeblock{(add-line (line 100 0 "black") 50 0 50 50 "outline")}
  Code a stick figure.
  @codeblock{
   (define (head)
   (circle 30 "outline" "black"))
   (define (body)
   (add-line(head) 30 60 30 200 "black"))
   (define (arms)
   (add-line (body) 0 100 70 100 "black"))
   (define (legs)
   (add-line(add-line(arms)
   30 200 10 240 "black")
   30 200 50 240 "black")) 
   (define (stick-person)
   (legs))
   (stick-person)
 }}

 @blog-post["Day 6 7/29/19"]{
 I refreshed my memory on how to update my blog and push and pull. }

 @blog-post["Tickets and 2htdp/image - 7/16/19"]{
  "Today we worked in the office, seperating into two groups, one group with those more experienced in computer science,and the other not being as much.
  This has taught me the type of dynamic that compute scientists usually have to work under in the workplace. The senior interns
  created tickets and sent them to us in order to solve these problems.}

 @blog-post["Tickets and 2htdp/universe - 7/17/19"]{
  "We continued to use 2htdp/image and later in the day expanded into 2htdp/universe. Reading the documentation, although difficult
  to read at some times, was very useful and interesting to learn about. Learning all of the different parts of universe was very
  informative"}

 @blog-post["Coding  as a group - 7/18/19"]{
  "Today we started out with just one object on our computer and proceeded to pass it around in our groups and added different
  things to each computers code. This resulted in a variety of different shapes and figures and showed new and unique ways
  that I could use 2htdp/image and universe that I had not known how to do before. Seeing everyones code also showed me how
  everyone has a different style of coding and that sometimes it's not easy to read other peoples code if you don't know the
  reasoning behind it."}

 @blog-post["Tickets - 7/19/19"]{
  "Today we worked on tickets, and I interacted with the senior interns as they helped me on parts of the ticket that I didn't
  understand. It was very insightful as I learned the difference between the senior interns and the junior interns because of the
  gap in skill between us."}

 @blog-post["Day 6 7/29/19"]{
  Today we paired up and then decided what part of the Kata Collection that we wanted to do. 3 of the pairs decided to do my-data-scis and so we all
  sat together and worked on it together. I had one computer that didn't work, and on the next, it took a lot of work to get git to work, but once I
  did get it to work, it was smooth sailing from there. My task was to add stimuli to the my-data-sci katas and I managed to do that, but not before
  running into problem with pushing. With my peers as well as Stephen's help, I was able to get it to work. Today I realized how much easier it is to
  solve technical problems when I have the help of my peers to help me
}}


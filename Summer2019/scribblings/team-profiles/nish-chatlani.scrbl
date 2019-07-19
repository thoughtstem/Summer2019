#lang scribble/manual

@(require "./common.rkt"
          2htdp/image
          lang/posn)
@(bio "Nish Chatlani" 
      "nish.png"
      "Hi my name is Nish.  I like thoughtSTEM.")

@blog{

@blog-post["Personal Philosophy"]{
I believe that one day, world peace can be achieved with communication and education through technology.
With fast-paced advancements from today's tech giants and geniuses we can improve the world and fix
environmental setbacks to mend the mistakes of the past.

 }
      
@blog-post["Day 6"]{
On the first day of the Thuoghtstem Summer project, I learned a lot about distributed cognition (DCog), also referred to as
"Extended Mind".  We drew parallels between DCog and technology and how technology serves as storage that the mind once stored (e.g. phone numbers).
Furthermore, we learned the basics and the powers of the command terminal.  It was very informational and will be useful in the future.
}
Team-building and communication
@blog-post["Day 7"]{
Starting the day, we learned how to push team profiles to the thoughtstem summer interns git repository.  We saw that in order
to commit your local changes, you need to first pull other member's changes that were added before yours.  Once you pull their
changes and merge their data with yours to ensure that everything works together properly. We learned a series of cammands 

STUDENT TEACHER TACTIC
SETUP
   COACH --> Opens up chromebook and opens Dr. Racket
   COACH --> Using a Kata card or brain, coach will code a game in front of the kids,
             explaining the processes briefly, and runs the game once to show the students.
   COACH --> Deletes code and Closes laptop, and lets the students try to build the game from scratch.
   COACH --> Coach can answer questions,
             IF they desperately need help, it will cost 10 ThoughtSTEM dollars.
MAIN
   ONCE one student has coded the game to completion and accuracy DO
      COACH --> gives them 5 ThoughtSTEM dollars
      STUDENT --> "Yay"
      COACH --> "Okay, now xyz will be teaching the code to the rest of you."
      COACH --> orders everyone to close their computers
      STUDENT --> Teaches other students. 
   
}
@blog-post["Day 8"]{
Today we got to learn about specs and their implementations.  We were given tickets, or issues to solve the specs via github.
I also learned about what being code complete is, theoretically(when the soec is completed) and realistically(code is never complete).
I learned about many new git commands such as "mv", "find", and checkout.  I learned to create new branches, switch between branches,
and open a branch from a git repo.  As our job, we partnered up and sorted through intern profiles and changed the names to ensure consistency.
 }

@blog-post["Day 9"]{
We learned today about Krashen's Input hypothesis and how it can be related to modern computer science. }
}

@blog-post["Day 16"]{
I fully got the understanding that a branch is a clone of the master repository, for the purpose
of making personal changes without breaking the main repo's code. }
}
@blog-post["Day 17"]{
Using the 2htdp shape/animation language, I created a drawing with polygons and other shapes.

@codeblock{ (above(beside(ellipse 20 40 "solid" "gray")
       (ellipse 20 40 "solid" "gray"))
(underlay/offset (star-polygon 20 20 9 "solid" "blue")
                 2 2
                 (star-polygon 20 20 9 "solid" "pink"))
(scale/xy 3/2 1/2 (flip-vertical (star-polygon 20 20 9 "solid" "gray"))))}
                     
@(above(beside(ellipse 20 40 "solid" "gray")
       (ellipse 20 40 "solid" "gray"))
(underlay/offset (star-polygon 20 20 9 "solid" "blue")
                 2 2
                 (star-polygon 20 20 9 "solid" "pink"))
(scale/xy 3/2 1/2 (flip-vertical (star-polygon 20 20 9 "solid" "gray"))))}

@blog-post["Day 18"]{
We wrote new varying challenge level katas using 2hdtp/image inside of Dr. Racket.
                     Katas:
Star:

Create a solid blue, star-shaped polygon, with step count of 2.

Hint: side-length, point count, step count, fill, color.

@(star-polygon 40 5 2 "solid" "blue")

@codeblock{(star-polygon 40 5 2 "solid" "blue")}

Regular Polygon:

Create a regular 6-sided polygon (hexagon) with red outline.

Hint: side-length, side count, fill, color.

@(regular-polygon 40 6 "outline" "red")

@codeblock{(regular-polygon 40 6 "outline" "red")}

Pulled Regular Polygon:

Create a Regular Polygon with 7 sides, that has one-third pull
on each side, acute angle, and a purple outline.

Hint: side-length, side-count, pull (the curve or pulling of the sides),
angle, fill, color.

@(pulled-regular-polygon 50 7 1/3 30 "outline" "purple")

@codeblock{(pulled-regular-polygon 50 7 1/3 20 "outline" "purple")}

Polygon:

Create a solid green polygon with a list of 4 points that create an arrow shape.
**Must require lang/posn in order to "make-posn"

Hint: list of vertices, fill, color

@(polygon(list(make-posn 0 0)
               (make-posn -10 20)
               (make-posn 60 0)
               (make-posn -10 -20))
               "solid" "green")

@codeblock{(polygon(list(make-posn 0 0)
               (make-posn -10 20)
               (make-posn 60 0)
               (make-posn -10 -20))
               "solid" "green")}
These are entry level cards for highschool students.

}
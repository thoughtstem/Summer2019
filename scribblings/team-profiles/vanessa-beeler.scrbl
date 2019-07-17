#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-code-no-peeking.rkt"
          "../new-tactics/no-peeking.rkt"
          2htdp/image)

@(bio "Vanessa Beeler" 
      "vanessa_picture_new.png"
      "I started coding my senior year of high school in AP Computer Science. I just
       finished the intro series of CS classes during my freshman year at Cal Poly SLO.
       I know Python as well as a little bit of Java.")

@(define face (circle 100 "solid" "gold"))
@(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
@(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))

@blog{

@blog-post["Personal Philosophy"]{
I think coding should be used in the future to streamline the process of performing trivial
tasks in such a way that they no longer need to be done by humans. Once people are
no longer required to perform these time-consuming activities, they will be able to
focus their attention on more difficult tasks and solely focus on creating a better
society for everyone to live in. Personally, I would like to contribute to this process
as much as possible within my career. People should be able to focus on things that they
love instead of chore-like activities.
}
      
@blog-post["Day 1"]{
                    
Distributed Cognition

On our first day of the internship, we researched Distributed Cognition. To the
best of my understanding, DCog is the idea that each individual's mind is not
the full extent of their knowledge. Each person works together with their
environment to add to their own cognition and ideas. Currently, it
is possibly becoming less important to be able to remember everything yourself,
as it is becoming easier and easier to use the Internet or other resources to
look up any topics you are curious about or have learned about previously but
forgot.
Here are a few links that I used to learn about the topic:

@url{http://edutechwiki.unige.ch/en/Distributed_cognition}
@url{https://www.learning-theories.com/distributed-cognition-dcog.html}
}

@blog-post["Day 2"]{
Recognition vs. Recall vs. Fluency

Today, we learned about recall vs. recognition. We applied our knowledge of this
by playing an ASL memory game. We learned that we were able to recall symbols that
were either the most unique or relevant to use. Eventually, by playing the game
for a few rounds, we were able to recognize more symbols. We also learned about
how fluency is the highest level of recall.
}

@blog-post["Day 3"]{
Refactoring, Broca's Region, fMRI Studies

Refactoring is the process of reorganizing existing computer code without changing any external code. 
The Broca's Region is the area of the brain responsible for speech formation. It is located in the frontal
lobe of the dominant hemisphere. fMRI is a type of imaging that measures brain activity by detecting changes
related to blood flow.}


@blog-post["Day 4"]{
New Tactic

We made a variation of the Disintegrating Code tactic by requiring students to not look at their keyboards
while typing. This reinforces and strengthens a student's ability to type, which is clearly a very
important skill in the realm of coding. Other than this relatively small detail, the overall structure of
the tactic is the same as disintegrating code. 

DISINTEGRATING CODE (NO PEEKING VERSION)

@(no-peeking)
}

@blog-post["Day 5"]{
New Kata

Today we worked on making a new kata for the kids to work on, using the fundamentals language. Below is the code
for the kata that we made, which makes an emoji that is rolling its eyes.

@codeblock{(define face (circle 100 "solid" "gold"))
(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))
(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))}

@(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))
}
}

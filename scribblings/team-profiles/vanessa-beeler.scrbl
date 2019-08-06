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

@blog-post["Day 6"]{
Today we worked with 2htdp/universe in order to animate our images.
}

@blog-post["Day 7"]{
Today we continued working with 2htdp/universe, making animations with objects of our choosing. Below is the code
that I wrote for a polygon that looks like a flower to continually change colors between those in the rainbow, which
travels in a circle.

@codeblock{(define (shape tick)
  (overlay/offset (pulled-regular-polygon 50 5 1 140 "solid" (find-color tick)) (find-x tick) (find-y tick)
              (square 400 "solid" "white")))

(define (find-color tick)
  (cond ((< (modulo tick 60) 10) "red")
        ((< (modulo tick 60) 20) "orange")
        ((< (modulo tick 60) 30) "yellow")
        ((< (modulo tick 60) 40) "green")
        ((< (modulo tick 60) 50) "blue")
        ("purple")))

(define (find-x tick)
  (* 100 (cos (* .1 tick))))

(define (find-y tick)
  (* 100 (sin (* .1 tick))))

(big-bang 0
  (on-tick add1)
  (to-draw shape))}
}
@blog-post["Day 8"]{
Today we worked on a coding interview question at the beginning of the day, and then Charbel and I started working on making
a snake game as a new kata. We planned out several intermediate katas before the final step of making the classic game Snake.
As for coding, we only got through the first and second snake katas today, and plan to do more on future days. Below is the
code for the first snake kata:

@codeblock{(define (create-snake time)
(place-image (square 30 "solid" "green")
            300 300
            (empty-scene 600 600)))

(big-bang 0
  (on-tick add1)
  (to-draw create-snake))}

This is the code for the second snake kata:

@codeblock{#lang Summer2019/Languages/my-game-lang/main

(define direction #t)

(define (spinning-rectangle state)
(if direction
(place-image
(square 30 "solid" "green")
(modulo (* 5 state) 200)
100
(empty-scene 200 200))
(place-image
(square 30 "solid" "green")
(- 200 (modulo (* 5 state) 200))
100
(empty-scene 200 200))))

(big-bang 0
(on-tick add1)
(to-draw spinning-rectangle 200 200))}

}

@blog-post["Day 9"]{
Today we started again with the coding interview questions from yesterday. The first one was "write code to remove
duplicates from a singly linked list," and the second question was "write code to find the kth-to-last element from
a singly linked list." I almost finished these questions yesterday, and finally got it all working today. I also
had the chance to write my code on the whiteboard as if I was in an actual coding interview. Below is the code that
I wrote in Python to answer both questions:

@codeblock{
class Node:
    def __init__(self, key):
        self.key = key
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def display(self):
        temp = self.head
        while temp:
            print(temp.key, end = " ")
            temp = temp.next

    def create_list(self, data):
        if data[0]:
            self.head = Node(data[0])
        temp = self.head
        for i in range(1, len(data)):
            temp.next = Node(data[i])
            temp = temp.next

    def kth_to_last(self, k):
        temp = self.head
        other = temp.next
        try:
            for i in range(k):
                other = other.next
        except:
            print("There are less than", k, "elements in the list.")
            return
        while other:
            temp = temp.next
            other = other.next
        print(temp.key)

    def remove_duplicates(self):
        temp = self.head
        if temp is None:
            return
        comp = temp.next
        i = 0
        j = 1
        while temp:
            while comp:
                if temp.key == comp.key:
                    comp = comp.next
                    new = self.head
                    index = 0
                    while index < j - 1:
                        new = new.next
                        index += 1
                    new.next = comp
                    j += 1
                else:
                    comp = comp.next
                    j += 1
            temp = temp.next
            try:
                comp = temp.next
            except:
                return
            i += 1
            j = i + 1
        return self

LL = LinkedList()
LL.create_list([1, 2, 5, 3, 6, 3])
LL.remove_duplicates()
LL.display()}
}
}
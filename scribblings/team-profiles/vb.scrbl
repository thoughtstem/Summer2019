#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "./disintegrating-code-no-peeking.rkt")

@(define (about #:title title
                #:summary summary
                #:science (science "")
                #:key-metacognitive-concepts (metacognition '())
                #:short-term-outcomes (short-term '())
                #:long-term-outcomes (long-term '())
                )
   (list
     (para (bold "ABOUT " title))
     (para (bold "Summary.") " " (italic summary))
     (para (bold "Scientific Grounding.") " " science)
     (bold "Key meta-cognitive concepts")
     (itemize (map item metacognition))
     (bold "Short-term cognitive outcomes")
     (itemize (map item short-term))
     (bold "Long-term cognitive outcomes")
     (itemize (map item long-term))))

@(bio "Vanessa Beeler" 
      "vanessa_picture_new.png"
      "I started coding my senior year of high school in AP Computer Science. I just
       finished the intro series of CS classes during my freshman year at Cal Poly SLO.
       I know Python as well as a little bit of Java.")

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

On our first day of the internship, we researched Distributed Cognition.To the
best of my understanding, DCog is the idea that each individual's mind is not
the full extent of their knowledge. Each person works together with their
environment to add to their own cognition and ideas. In this day and age, it
is possibly becoming less important to be able remember everything yourself,
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
The Broca's Region is the area of the brain responsible for speech formation. It is located in the frontal lobe of the dominant hemisphere.
fMRI is a type of imaging that measures brain activity by detecting changes related to blood flow.}


@blog-post["Day 4"]{
New Tactic

DISINTEGRATING CODE (NO PEEKING VERSION)

@(tactic->scribble
    (disintegrating-code-no-peeking 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers))

@(about #:title   "DISINTEGRATING CODE"
        #:summary "Learners begin by copying code verbatim and end by writing it from memory without looking at their keyboard, which adds an extra element of difficulty."
        #:science "This is a type of \"Faded Worked Example\" -- an activity in which the educator gradually removes pedagogical scaffolding until there is none left."
        #:key-metacognitive-concepts (list "Don't let learners believe that real programmers memorize and regurgitate."
                                           "Make it clear that the goal is fluency and language mastery."
                                           "Make it clear that memorization is just a power tool for language learning (similar to memorizing a Spanish story if you were in Spanish class.)"
                                           "Make it clear that in the grand scheme of things, it's less about what they are memorizing and more about the act of memorization itself, and how that trains your brain to be a better programmer."
                                           (list "Tell them it's okay if they eventually forget what they just memorized -- as long as they remember " (bold "how") " to memorise it again.")
                                           "Make it clear that they are training a powerful abstract skill: The ability to translate from English into code." 
                                           "Make it clear that this is critical for being a software developer, and that it will take many years to become an expert at this cognitive process.")
        #:short-term-outcomes (list "Introduces specification (front of card) and implementation (back of card)." 
                                    "Introduces learners to the Fundamental Cognitive Act of Software Development: the translation from specification to implementation.")
        #:long-term-outcomes  (list "Trains pattern matching (\"code vision\")"
                                    "Trains recall and recognition for language identifiers (\"knowledge acquisition\")"
                                    "Trains general memory skills for abstract grammars (\"chunking\")"
                                    "Trains grammatical intuitions for the language at hand (\"syntactic and semantic intuition\")"
                                    "Frees working memory for creativity and design by reducing cognitive load caused by lack of language fluency."
                                    "Improves typing abilities"))

}

}
#lang racket
(require scribble/manual)

(require ts-tactics)

(define (about #:title title
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

    (list

     (phase 'Setup
            (list
             (instruction 'Coach
              (body-action "hand write the contents of the back of the challenge-card on the
                           bottom half of the whiteboard"))
             (instruction 'Coach
              (body-action "hand write the contents of the front of the challenge-card on the
                           top half of the whiteboard"))
             (instruction 'Coach
              (body-action "hand write two separate hangman game setups on the whiteboard"))
             (instruction 'Coach
                      (body-action "Divide students into two teams and assign each team to a hangman")))

             )
      
     (phase 'Main
            (list

             (until (predicate "is blank" "the contents of the bottom half of the whiteboard")
                    (instruction 'Coach
                      (body-action "remove some identifiers from the contents of the bottom half of the whiteboard"))
                    (instruction 'Team
                      (body-action "erase all from the contents of [Team-Computers]"))
                    (instruction 'Team
                      (body-action "write a program that fits the requirements written on the top half of the whiteboard"))
                    (instruction 'Coach
                      (body-action "IF Team makes mistake and cannot run code, add a body part to the hangman board for that team"))
                    (instruction 'Coach
                      (body-action "IF hangman board is completed for a team, the other team wins and earns extra ThoughtSTEM dollars")))
                    ))

(about #:title "Hangman code"
       #:summary "Learners will use a childhood activity to better their understanding of code,
while using a method
 of constructing and destructing."
       #:science "This is an activity based on a theory that people learn and retain lessons better when
they come from their mistakes and failures rather than their successes."))

                    
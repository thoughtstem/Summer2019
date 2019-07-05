#lang scribble/manual

@(require 
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt"
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-code-no-peeking.rkt"
          "../new-tactics/no-peeking.rkt")

@section{intro}

This is tactics document A. The following tactics are recommended for beginners.

@subsection{Code Anatomy Race}
@(tactic->scribble(code-anatomy-race
                     'Coach
                     'Team
                     'Team-Computers
                     'both-challenge-cards
                     'both-whiteboards
                     'the-markers))


@subsection{Disintegrating with no Peeking}
@(no-peeking)

@subsection{Hangman Tactic}
@(tactic->scribble
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
                      (body-action "Divide students into two teams and assign each team to a hangman"))

             )
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
                      (body-action "IF hangman board is completed for a team, the other team wins and earns extra ThoughtSTEM dollars"))
                    )))))



          
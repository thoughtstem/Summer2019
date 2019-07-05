#lang scribble/manual

@(require 
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

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
          
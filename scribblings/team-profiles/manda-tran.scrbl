#lang scribble/base

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "./code-anatomy-race.rkt")

@(bio "Manda Tran"
      "manda-tran.jpg"
      "Hi my name is Manda. I am going into my third year at UCSD
 as a Cognitive Science with Machine Learning major.")

@blog{

@blog-post["Day 1"]{
Distributed Cognition - 06/17/19

Discussed the definition of distributed cognition as the mind not being limited to the individual.
It includes utilizing resources from the environment (artifacts and other people).
Distributed Cognition counters the traditional view that the mind is contained in the body.
This article can be found @hyperlink{https://en.wikipedia.org/wiki/Distributed_cognition
                                     here}.

@bold{Chinese Room}

As an example of distributed cognition we researched the Chinese Room experiment. Information about this
can be found @hyperlink{https://www.iep.utm.edu/chineser/
                        here}.
}

@blog-post["Day 2"]{
Recognition vs Recall - 06/18/19

In collaboration with Timmy Tucker. Blog can be found below

@secref{recog}

}

@blog-post["Day 3"]{
Refactoring/Broca's Region/fMRI studies - 06/19/19
}

@blog-post["Day 4"]{
New Tactic Code Anatomy Race - 06/20/19
@(tactic->scribble
  (code-anatomy-race 'Coach
                     'Team
                     'Team-Computers
                     'the-challenge-card
                     'the-whiteboard
                     'the-markers))
}

}
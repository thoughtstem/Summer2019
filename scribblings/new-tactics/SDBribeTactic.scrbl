#lang scribble/base

@(require ts-tactics)
Bribery Tactic

@(tactic->scribble
  (instruction 'Coach
      (body-action "pick challenge-card")))

@(tactic->scribble
   (instruction 'Coach
          (hand-write
            (contents-of
              (front-of 'Challenge-Card))
            (top-half-of 'The-Whiteboard))))

@(tactic->scribble
  (instruction 'Coach
               (body-action "choose money amount (which is also the hint limit)")))

@(tactic->scribble
  (instruction 'Coach
               (body-action "explain that every hint takes one dollar off their cash prize")))

@(tactic->scribble 
    (list
    (until (predicate "have finished" "all students")
     (instruction 'Coach
      (branching-verb (predicate "asks for a hint" 'Student)
                                          ((directed-action (verb "give hint") "" 'Student)
                                           (directed-action (verb "remove a dollar") "" "student's cash prize")))))))

@(tactic->scribble
  (instruction 'Coach
               (body-action "give each student their correct cash prize")))
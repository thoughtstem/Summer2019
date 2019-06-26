#lang racket

(provide SDBribeTactic)

(require ts-tactics
         ts-tactics/tactics/lang)

(define (SDBribeTactic coach
                       students)

(list
  (instruction 'Coach
      (body-action "pick challenge-card"))


   (instruction 'Coach
          (hand-write
            (contents-of
              (front-of 'Challenge-Card))
            (top-half-of 'The-Whiteboard)))

  (instruction 'Coach
               (body-action "choose money amount (which is also the hint limit)"))

  (instruction 'Coach
               (body-action "explain that every hint takes one dollar off their cash prize"))
 
    (list
    (until (predicate "have finished" "all students")
     (instruction 'Coach
      (branching-verb (predicate "asks for a hint" 'Student)
                                          (directed-action (verb "give hint") "" 'Student)
                                           (directed-action (verb "remove a dollar") "" "student's cash prize")))))

  (instruction 'Coach
               (body-action "give each student their correct cash prize"))))


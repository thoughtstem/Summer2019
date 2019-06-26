#lang racket

(provide SDBribeTactic)

(require ts-tactics
         ts-tactics/tactics/lang)

(define (SDBribeTactic coach
                       student
                       students
                       ch-card
                       amount
                       whiteboard)

(list
  (instruction coach
      (body-action "pick" ch-card))


   (instruction coach
          (hand-write
            (contents-of
              (front-of ch-card))
            (top-half-of whiteboard)))

  (instruction coach
               (body-action "choose" amount))

  (instruction coach
               (body-action "explain that every hint takes one dollar off their cash prize"))
 
    (list
    (until (predicate "have finished" students)
     (instruction coach
      (branching-verb (predicate "asks for a hint" student)
                                          (directed-action (verb "give hint and remove dollar") "" student)
                                           (directed-action (verb "do not give hints and do not remove dollars") "" students)))))
  (instruction coach
               (body-action "give each student their correct cash prize"))))


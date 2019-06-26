#lang racket

(provide code-anatomy-race)

(require ts-tactics
         ts-tactics/tactics/lang)

(define (code-anatomy-race coach
                           students
                           computers
                           challenge-card
                           whiteboard
                           markers)
  (list
   (phase 'Setup
          (list
           (instruction coach
                        (body-action "divide your team into two equal-sized teams"))
           (instruction coach
                        (body-action "choose two kata cards of equal difficulty"))
           (instruction coach  
                        (hand-write 
                         (contents-of 
                          (back-of challenge-card)) 
                         (bottom-half-of whiteboard)))))
   (phase 'Main
          (list
           (until (predicate "are done" "all teams")
                  (list
                   (instruction team
                                (body-action "put a box around the #lang line"))       

                   (instruction team
                                (body-action "put a box around all definitions"))
           
                   (instruction team
                                (body-action "put a box around all top-level expressions"))

                   (instruction team
                                (body-action "circle all key-words")) 

                   (instruction team
                                (body-action "write the total number of key words")) 

                   (instruction team
                                (body-action "put a dot at the beginning of all parenthesized expressions"))

                   (instruction team
                                (body-action "write up the total number of expressions"))

                   (instruction team
                                (body-action "above each expression dot, write the expression's nesting depth"))

                   (instruction coach
                                (branching-verb (predicate "made errors" team)
                                                (directed-action (verb "give a hint to") "" team)
                                                (announce "team is finished")))))))
       
   (instruction coach
                (body-action "congratulate the winning team"))))
#lang racket

(provide paraphrase)

(require ts-tactics
         ts-tactics/tactics/lang)

(define (paraphrase coach 
                             students computers
                             challenge-card 
                             whiteboard 
                             markers)

  (list
    (instruction coach  
                 (hand-write 
                   (contents-of 
                     (back-of challenge-card)) 
                   (bottom-half-of whiteboard)))

    (instruction coach  
                 (body-action "put a box around the #lang line"))

    (instruction coach  
                 (body-action "ask 2 students to paraphrase the definition of a #lang line"))

    (instruction coach
                 (body-action "put a box around all definitions"))
    
    (instruction coach  
                 (body-action "ask 2 students to paraphrase the definition of a definition"))

    (instruction coach
                 (body-action "put a box around all top-level expressions"))

    (instruction coach  
                 (body-action "ask 2 students to paraphrase the definition of a top-level expression"))

    (instruction coach
                 (body-action "circle all key-words"))

    (instruction coach
                 (body-action "write the total number of key words"))
    
    (instruction coach  
                 (body-action "ask 2 students to paraphrase the definition of a key word"))

    (instruction coach
                 (body-action "put a dot at the beginning of all parenthesized expressions"))

    (instruction coach
                 (body-action "write up the total number of expressions"))

    (instruction coach  
                 (body-action "ask 2 students to paraphrase the definition of an expression"))

    (instruction coach
                 (body-action "above each expression dot, write the expression's nesting depth"))

    (instruction coach  
                 (body-action "ask 2 students to paraphrase the definition of nesting depth"))
    ))

(module+ test
  (print-tactic
    (paraphrase 'Coach
                  'Team
                  'Team-Computers
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers)))

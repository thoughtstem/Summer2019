#lang racket

(provide disintegrating-code-no-peeking)
;This means that other files that require this file will be able to access the disintegrating-code-no-peeking function
;(sort of like making it public rather than private in a language like Java)

(require ts-tactics/tactics/lang)

(define (disintegrating-code-no-peeking coach 
                             students computers
                             challenge-card 
                             whiteboard 
                             markers)

  (list
    (phase 'Setup
           (list
             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (back-of challenge-card)) 
                            (bottom-half-of whiteboard)))

             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (front-of challenge-card)) 
                            (top-half-of whiteboard))))) 

    (phase 'Main
           (list
             (until (blank? (bottom-half-of whiteboard))  
                    (list
                      (instruction coach  
                                   (remove-some-identifiers
                                     (bottom-half-of whiteboard)))

                      (instruction students
                                   (erase-all-from computers))

                      (instruction students
                                   (body-action "write a program that fits the requirements written on the top half of the whiteboard, without looking at your keyboard."))

                      ))))))

(module+ test
  (print-tactic
    (disintegrating-code-no-peeking 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers)))

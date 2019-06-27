#lang racket

(provide disintegrating-pairs)
;This means that other files that require this file will be able to access the disintegrating-code-no-peeking function
;(sort of like making it public rather than private in a language like Java)

(require ts-tactics/tactics/lang)

(define (disintegrating-pairs coach 
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
                            (top-half-of whiteboard)))
             (instruction 'Coach
                          (body-action "Pair up students preferably with similiar ability"))
             (instruction 'Coach
                          (body-action "Instruct pairs to take turns being the driver and the navigator every 60 seconds"))
             )) 

    (phase 'Main
           (list
             (until (blank? (bottom-half-of whiteboard))  
                    (list
                      (instruction coach  
                                   (remove-some-identifiers
                                     (bottom-half-of whiteboard)))
                      

                      (instruction students
                                   (erase-all-from computers))
                      
                      (instruction 'Coach
                                   (body-action "Set timer for 60 seconds. When time runs out tell pairs to exchange roles."))

                      (instruction students
                                   (body-action "write a program that fits the requirements written on the top half of the whiteboard, without looking at your keyboard."))

                      ))))))

(module+ test
  (print-tactic
    (disintegrating-pairs 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers)))

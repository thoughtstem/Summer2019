#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-v2.rkt"
          "../new-tactics/disintegrate.rkt"))


@require[@for-label[Summer2019
                    racket/base]]
@(bio "Megha Khelgi" 
      "meghak.png"
      "I started coding when I was in high school. I know C, C++, Matlab, Java and I'm currently trying to learn Python.
       I'm going to be a sophomore at THE Ohio State University!")

@blog{

@blog-post["Personal Philosophy"]{
"I believe computers have the power to change the world.
 Also, Chipotle will save your life in college, kids".
}
      
@blog-post["Day 6"]{
                    
Distributed Cognition
We talked about DCog and how people extend their minds to perform tasks...

@blog-post["Day 7"]{

@(tactic->scribble
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
                      

                      (instruction team
                                   (erase-all-from computers))
                      
                      (instruction 'Coach
                                   (body-action "Set timer for 60 seconds. When time runs out tell pairs to exchange roles."))

                      (instruction team
                                   (body-action "write a program that fits the requirements written on the top half of the whiteboard, without looking at your keyboard."))

                      ))))))
 }
}}

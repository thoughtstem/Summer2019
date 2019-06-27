#lang racket

@section{intro}
"STUDENT TEACHER TACTIC
The first student to finish a game coded by the teacher wins,and gains the responsibility of being the new teacher,
and help all of the students complete the game."

@section{test}

 (list
   (phase 'Setup
          (list
           (instruction coach
                        (body-action " Opens up chromebook and opens Dr. Racket"))
           (instruction coach
                        (body-action " Using a Kata card or brain, coach will code a game in front of the kids,
            explaining the processes briefly, and runs the game once to show the students."))
           (instruction coach  
                        (body-action " Deletes code and Closes laptop, and lets the students try to build the game from scratch."
                           ))
           (instruction coach
                        (body-action "Coach can answer questions,
                            IF they desperately need help, it will cost 10 ThoughtSTEM dollars.")))))
   (phase 'Main
          (list
           (once (predicate "one student" " has coded the game to completion and accuracy")
                  (list
                   (instruction coach
                        (body-action "gives them 5 ThoughtSTEM dollars"))       

                   (instruction team
                                (body-action "congratulates student and closes computers"))
           
                   (instruction coach
                                (body-action  "Okay, now xyz will be teaching the code to the rest of you."))

                   (instruction team
                                (body-action "teaches all students"))))))
       
   (instruction coach
                (body-action "Congratulate the entire team"))))

   
this is a test

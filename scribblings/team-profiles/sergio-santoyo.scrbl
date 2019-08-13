#lang scribble/base

@(require "./common.rkt"
	ts-tactics)

@(bio "Sergio Santoyo" 
      "Sergiopic.jpg"
      "Hi! I am a 2nd year Computer Engineering major at UC Davis.")

@blog{

@blog-post["Personal Philosophy"]{
                                  When life gives you lemons, make lemonade
     }
  
@blog-post["Day 1"]{
  We learned about DCog and learned about different experiments that were conducted. The Chinese room and the Extended mind. 
}


@blog-post["Day 2"]{
Learned how to say "Hi my name is  Sergio" in sign language. learned about recognition and recall. 

}

@blog-post["Day 3"]{
Learned about refactoring code, more in depth vim analysis and concluding with Broca's region.
}
@blog-post["Day 4"]{
@(bold "Hangman Tactic")

@(tactic->scribble
    (list

     (phase 'Setup
            (list
             (instruction 'Coach
              (body-action "hand write the contents of the back of the challenge-card on the
                           bottom half of the whiteboard"))
             (instruction 'Coach
              (body-action "hand write the contents of the front of the challenge-card on the
                           top half of the whiteboard"))
             (instruction 'Coach
              (body-action "hand write two separate hangman game setups on the whiteboard"))
             (instruction 'Coach
                      (body-action "Divide students into two teams and assign each team to a hangman"))

             )
      )
     (phase 'Main
            (list

             (until (predicate "is blank" "the contents of the bottom half of the whiteboard")
                    (instruction 'Coach
                      (body-action "remove some identifiers from the contents of the bottom half of the whiteboard"))
                    (instruction 'Team
                      (body-action "erase all from the contents of [Team-Computers]"))
                    (instruction 'Team
                      (body-action "write a program that fits the requirements written on the top half of the whiteboard"))
                    (instruction 'Coach
                      (body-action "IF Team makes mistake and cannot run code, add a body part to the hangman board for that team"))
                    (instruction 'Coach
                      (body-action "IF hangman board is completed for a team, the other team wins and earns extra ThoughtSTEM dollars"))
                    )))))
cko

@(bold "About Hangman code")
  
@(bold "Summary") Learners will use a childhood activity to better their understanding of code,
while using a method of constructing and destructing.

@(bold "Scientific Grounding.") This is an activity based on a theory that people learn and retain lessons better when
they come from their mistakes and failures rather than their successes.

  @(bold "Key meta-cognitive concepts")
}
}
@blog-post["Day 5"]{
  Although some of the interns learned about Data structures and arrays before, yesterday was my first encounter. As we dove in, I learned about the difficultly that
  interview questions in the field of computer science can be. It has pushed me to practice and improve my python skills in order to strengthen my abilities
  when coding. To conclude the day we went into to pairs and started a new project on Virtual Reality.}

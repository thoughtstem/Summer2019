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
@(tactic->scribble
    (list
    (until (predicate "is up" "time")

     (instruction 'Coach
      (body-action "pick challenge-card"))

     (until (predicate "decides they are ready for test" "team")

      (instruction 'Coach
       (discuss "Which tactic should we do next?"))

      (instruction 'Team
       (vote-on "which tactic to do next"))

      (instruction (group-add 'Coach 'Team)
       (body-action "do tactic together")))


     (instruction 'Team
      (body-action "test on challenge-card")))))

                    
                    }
}













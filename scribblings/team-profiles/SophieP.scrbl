#lang scribble/manual

@(require "./common.rkt"
           ts-tactics)

@(bio "Sophie Peeler" 
      "SophiePeeler.png"
      "I am currently a third year student at UC Berkeley majoring in Cognitive Science and minoring in Computer Science.
I have experience coding in Python, Java, Scheme, JavaScript, SQLite, and many more to come!")

@blog{

@blog-post["Personal Philosophy"]{
  With my degrees in Cognitive Science and Computer Science, I would like to work in developing Artifical Intelligence
   technologies once I leave university. Even though many people are skeptical about the idea of merging human
   consciousness and technology, I believe that its actually a very exciting prospect that opens up the doors to many
   other potential developments that will ultimately further our intelligence and progression as a society.
}
@blog-post["Day 6"]{
  Today, we talked about the theory of Extended Learning, or "DCog". Essentially, this theory explains how our minds are
     inherently connected to our environments, and how coding is a way of extending the ideas we come up with when we don't
      have enough memory storage to contain it all.
      In addition, we learned how to edit HTML pages by adding these team member profiles. To do this, we used command line
      prompts within the terminal and pulled base files from github. }

@blog-post["Day 7"]{
       We started today by going over basic git commands, including pushing, pulling, and commiting. We talked about how to
       do this with multiple different computers all editiing the same base code, and then needing to merge it all together.}

@(tactic->scribble
  (instruction 'Coach
      (body-action "pick challenge-card")))

@(tactic->scribble
   (instruction 'Coach
          (hand-write
            (contents-of
              (front-of 'Challenge-Card))
            (top-half-of 'The-Whiteboard))))

@(tactic->scribble
  (instruction 'Coach
               (body-action "choose money amount (which is also the hint limit)")))

@(tactic->scribble
  (instruction 'Coach
               (body-action "explain that every hint takes one dollar off their cash prize")))

@(tactic->scribble 
    (list
    (until (predicate "have finished" "all students")
     (instruction 'Coach
      (branching-verb (predicate "asks for a hint" 'Student)
                                          ((directed-action (verb "give hint") "" 'Student)
                                           (directed-action (verb "remove a dollar") "" "student's cash prize")))))))

@(tactic->scribble
  (instruction 'Coach
               (body-action "give each student their correct cash prize")))

}


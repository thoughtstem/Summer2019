#lang scribble/base

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "./code-anatomy-race.rkt")

@(bio "Timothy Tucker"
      "timothy-tucker.jpg"
      "Hello, my name is Timothy but everyone calls me Timmy. I am 17 years old and I go to Bonita Vista High School in Chula Vista. The End." )

@blog{

 @blog-post["Distributed Cognition - 06/17/19"]{
  Today we learned about distributed cognition, which was referred to as DCog. Distributed cognition is the idea that the mind and its cognition is not limited to the body, and is extended to the surrounding environment. One thought experiment that helped us understand this concept was about two people going to a museum, which can be found in the second paragraph of
  @hyperlink["https://en.wikipedia.org/wiki/The_Extended_Mind"]{this}
  Wikipedia article. In this example, Otto operates by distributing his cognitive load, while Inga chooses to operate all within her physical mind.
 }

 @blog-post["Recognition vs Recall - 06/18/19"]{
  Talked about the distinction between recognition and recall. Recognition is a more shallow understanding of a concept while recall requires a deeper understanding. We discussed this concept in terms of language specifically how the English language has subsets that require futher fluency.
 }

 @blog-post["Day 4"]{
New Tactic Code Anatomy Race - 06/20/19
@(tactic->scribble
  (code-anatomy-race 'Coach
                     'Team
                     'Team-Computers
                     'the-challenge-card
                     'the-whiteboard
                     'the-markers))
}
}
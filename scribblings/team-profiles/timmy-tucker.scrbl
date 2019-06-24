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


 @blog-post["Broca's Area - 06/19/19"]{
  After working more on our blogs and using racket functions to uniformly organize our ideas together, we discusses Broca's area. This is a region of the brain named after Pierre Paul Broca. In the 1800s, Broca had a patient who was
  terminally ill and also was experiencing an inability to produce language. After the patient passed, Broca discovered damage to the specific area of the brain that later became Broca's area. Today, we know this area plays a major role
  in language production and comprehension as a whole, however scientists still debate its exact role in how we interact with language.
}

 @blog-post["New Tactic - Code Anatomy Race - 06/20/19"]{

@(tactic->scribble
  (code-anatomy-race 'Coach
                     'Team
                     'Team-Computers
                     'both-challenge-cards
                     'both-whiteboards
                     'the-markers))

This is a new tactic that our group developed, which essentially loops the code-anatomy tactic process so that two teams can compete to complete the tactic head-to-head.
}


@blog-post["Live AMA with Stephen - 06/21/19"]{
Today Stephen had us write down questions that we had for him, especially related to the field of computer science from both an academic and professional standpoint. Having an hour where we were able to listen to an expert in the field
discuss its current state and provide value information as future workers was extremely eye-opening and enlightening. I think that while many people could find a plethora of information regarding what languages are popular and where the
demand is in the workforce, the opportunity to listen to the philosophies that Stephen holds seems much more valuable. Instead of trying to find extremely specific answers to specific questions, I can now use these words of wisdom to
guide my journey overall in computer science.
}
}

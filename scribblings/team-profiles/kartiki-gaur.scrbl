#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Kartiki Gaur" 
      "kg.png"
      "Hi! I just finished my first year of college at UC Berkeley. I started coding during my freshman year of college.
I am Cognitive Science major, so I am interested in the intersection between neuroscience and CS and, more specifically, neural computation. 
")

@blog{

@blog-post["Day 1"]{
DCog

I enjoyed learning about Distributed Cognition during the first day of internship. I felt the following website really helped me understand the topic. DCog is the idea that outside environments and rescources reinforce one's learning. An example of this would be flow states, in which a quiet, outdoor environment is more conducive to the formation of a flow of concentration.

@url{https://www.sciencedirect.com/topics/computer-science/distributed-cognition})}

@blog-post["Day 2"]{
Recognition vs. Recall vs. Fluency

Today, we learned about recall vs. recognition. We applied our knowledge of this by playing an ASL memory game. We learned that we were able to recall symbols that were either the most unique or relevant to use. Eventually, by playing the game for a few rounds, we were able to recognize more symbols. We also learned about how fluency is the highest level of recall.}

@blog-post["Day 3"]{
Refactoring, Broca's Area, fMRI Studies

Refactoring is the process of changing code without changing the external structure. Broca's Region is where speech is produced. fMRI Studies show that coding languages are processed in the same part of the brain as "natural languages."}

@blog-post["Day 4"]{
New Tactic: Code Anatomy Race 

@(tactic->scribble
  (code-anatomy-race 'Coach
                     'Team
                     'Team-Computers
                     'both-challenge-cards
                     'both-whiteboards
                     'the-markers))
}

@blog-post["Day 5"]{
Ask Me Anything Day:

Today, we learned more about the difference between working at big companies vs. working at startups. I found it interesting to learn more about the fast-paced environments that startups have. I also got to learn more about different coding languages paradigms and, more specifically, functional programming vs. object-oriented programming.
}

@blog-post["Day 6"]{
Today, we came up with 3 examples for map/apply that may be translated into new katas.
@codeblock{(map sub1 (range 10))}
  =(-1 0 1 2 3 4 5 6 7 8)
@codeblock{(map max (range -5 5))}
  =(-5 -4 -3 -2 -1 0 1 2 3 4)
@codeblock{(apply gcd (map sub1 (range -10 11 2)))}
  = 1}

@blog-post["Day 7"]{
Today, we learned about git branches.} 
 
}


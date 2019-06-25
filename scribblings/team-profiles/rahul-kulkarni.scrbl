#lang scribble/base

@(require "./common.rkt")
@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "./paraphrase.rkt")

@(bio "Rahul Kulkarni" 
      "rahulpic.jpg"
      "Going into his senior year of high school. Proficient in C, Java, Python, Javascript.")

@blog-post["Day 1"]{
  Learned about DCog and studied the Chinese room and Museum notebook thought expirements. I realized it's beneficial to distribute your cognitive load with your peers, your enviornment, or both!
}

@blog-post["Day 2"]{
  Learned the difference between recognition and recall. There isn't really a distnct difference, it's more of a spectrum. Learned ASL. I have recall over the letters in my name, but not much else.
}

@blog-post["Day 3"]{
  Learned about refactoring code. I saw the benefits of abstracted functions when we were able to streamline everyone's blog posts with a single function. Researched broca's region. Learned that learning programming is more like learning a forign language than doing math. I never would have thought about it that way!
}

@blog-post["Day 4"]{
New Tactic: paraphrase - 06/20/19
@(tactic->scribble
  (paraphrase 'Coach
                     'Team
                     'Team-Computers
                     'the-challenge-card
                     'the-whiteboard
                     'the-markers))
}



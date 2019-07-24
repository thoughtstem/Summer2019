#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/bribe-tactic.rkt")

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
       do this with multiple different computers all editiing the same base code, and then needing to merge it all together.

       We created a new tactic that involves incentives for students to debug without any help:

@(tactic->scribble
  (SDBribeTactic 'Coach
  'Team))
}

@blog-post["Day 8"]{
         Today we began working on cleaning the repository. To do this, each group made their own branches, made changes, and
          then opened pull requests. After a code review, our completed tasks were then pushed to the master branch. Specifically,
          my group working on standardizing the file names for these blog posts.
          We also talked about the differences between specification and implementation when it comes to code and software
          engineering.
          }

@blog-post["Day 9"]{
            Today, we finalized our pull requests from yesterday and merged all the changes our groups made. We also talked
            about "Software Eating the World," an article from 2011 that describes the various ways in which technology and
            software are becoming the norm as opposed to previous models of business, products, etc.
            Later in the day, we continued resolving github tickets. Specifically, my partner and I fixed issues with the tactic
            files, including standardizing how the files are named as well as what kind of files they are (racket vs. scribble).
            Towards the end of the day, my partner and I closed a couple more tickets on github. The issues we resolved included
            standardizing the new teaching tactic files, as in standardizing the way the files were named as well as the type of
            file they were (racket vs. scribble).
            Towards the end of the day, my partner and I closed a couple more tickets on github. The issues we resolved included
            standardizing the new teaching tactic files, as in standardizing the way the files were named as well as the type of
            file they were (racket vs. scribble).
            Later in the day, we continued resolving github tickets. Specifically, my partner and I fixed issues with the tactic
            files, including standardizing how the files are named as well as what kind of files they are (racket vs. scribble).
            }

@blog-post["Day 10"]{
          Today was the last day of this work week. We finished up closing some tickets that we had started working on the previous
          day (standardizing the way the tactic files are named and formatted). We cleaned up any remaining git trash floating
          around and made sure everything was pushed and finalized. We also went over some common terms used in the software
          engineering industry.
          }

@blog-post["Day 21"]{
              Today was the first day of the fifth work week. We started today by getting all the new interns set up with blogs, as
              well as cleaning our computers of any stuff left over from the interns from the previous week. We had some trouble
              making sure that all our branches were up to date, but eventually we managed to get everything straightened out. We
              were also brought up to date by interns from the past week on what sort of projects have been started (the meme katas,
              gif katas, etc.). Towards the end of the day, we began working on open issues in github.
              }

@blog-post["Day 22"]{
                I started today by working on an open issue in github. The issue involved fixing the "stimuli" (prompts) for the
                medium level katas in new-katas-b.scrbl. I standardized the stimuli and commented out the long,
                unnecessary explanations under each kata.
                I then began a new issue which involved adding more examples to the data science katas examples. Today I put in easy,
                 medium, and hard examples of scatterplots.
                 }

@blog-post["Day 23"] {
                 Today I continued working on adding data science kata examples to the examples document, specifically
                  examples of different graphs. I added kata examples for histogram-area graphs, candlesticks graphs,
                   and error line graphs. We also worked on cleaning up some errors in the repository that were
                   causing the compiler to break.
                   }
}
               






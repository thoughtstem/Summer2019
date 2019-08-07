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

@blog-post["Day 26"]{
              Today was the first day of the fifth work week. We started today by getting all the new interns set up with blogs, as
              well as cleaning our computers of any stuff left over from the interns from the previous week. We had some trouble
              making sure that all our branches were up to date, but eventually we managed to get everything straightened out. We
              were also brought up to date by interns from the past week on what sort of projects have been started (the meme katas,
              gif katas, etc.). Towards the end of the day, we began working on open issues in github.
              }

@blog-post["Day 27"]{
                I started today by working on an open issue in github. The issue involved fixing the "stimuli" (prompts) for the
                medium level katas in new-katas-b.scrbl. I standardized the stimuli and commented out the long,
                unnecessary explanations under each kata.
                I then began a new issue which involved adding more examples to the data science katas examples. Today I put in easy,
                 medium, and hard examples of scatterplots.
                 }

@blog-post["Day 28"]{
                 Today I continued working on adding data science kata examples to the examples document, specifically
                  examples of different graphs. I added kata examples for histogram-area graphs, candlesticks graphs,
                   and error line graphs. We also worked on cleaning up some errors in the repository that were
                   causing the compiler to break.
                   }

@blog-post["Day 29"]{
                 I started and completed a new ticket today. This ticket involved formatting the example meme katas,
                 and then getting them to correctly display online when built. To do this, I made the "examples.rkt"
                 document in the my-memes-lang folder, and formatted in all the examples katas that had already
                 been written.
                 Then, I wrote out the "katas.rkt" document in the my-memes-katas folder so that when the webpage is
                 built, all the katas are correctly displayed with the right stimuli and headings. Before
                 committing my changes, I built the folder. The webpage opened up and correctly displayed
                 everything, which meant everything was ready to go and I was able to successfully push
                 and merge into the master repo.
                 We also learned a little bit today about the history of the internet and the debate between purists
                 and pragmatists. In today's fast-paced software development landscape, its impossible to not be
                 a pragmatist. We can test our code so easily and quickly that it wouldn't make sense to be a
                 purist and plan everything down to the last symbol before writing our code. When testing wasn't so
                 efficient, it made sense to be a purist, but today, pragmatists always win out.
                 }

@blog-post["Day 30"]{
                 Today I continued my work from yesterday by performing similar work for the GIF katas. Similar to yesterday, I
                       created a new document "examples.rkt" and copied in the existing GIF kata examples. Then, I formatted the
                       "katas.rkt" document inside my-GIFs-katas so that it pulled in the examples when opening the webpage. Finally,
                       I modified the table of contents inside the scribble manual for my-GIFs-katas so that the webpage opened
                       successfully and displayed everything correctly.
                       I also started this process for the data-science-katas. For this collection, the "examples.rkt" document
                       already existed, but is extremeley long and is missing stimuli for many of the katas. Because of time limitations,
                       I wasn't able to completely finish formatting these katas. I completed about half of them, and then left some
                       notes in the "my-data-sci-lang/examples.rkt" document for the next programmer, letting them know there were more
                       katas to format and some stimuli to fill in.
                       Before leaving, I made sure the website was able to open successfully and pushed my changes to the master repo.
                       }
@blog-post["Day 36"]{
                     Today was the first day of my third work week. We began by going over what to expect from a coding interview. I learned
                     about what kinds of questions to ask in an interview, as well as what kinds of coding prompts I would be expected to answer.
                    We went over a Singly Linked List problem, and I refreshed my java skills in trying to solve it.
                    When we moved on to working on the repository, my partner and I began by cleaning up some existing issues with file paths
                    in some of the documents. This did take a bit of time, but we managed to solve the issues.
                   }
@blog-post["Day 37"]{
                    We continued working on some data structures coding problems today, specially to do with linked lists. I worked on creating
                    recursive solutions for deleting duplicate nodes and find the kth to the last element in a given linked list.
                    My partner and I also began a new Kata collection for the repository. We decided to try out the fractal language, L-systems. When
                    that proved to be a little too complicated, we decided to switch to the 2dhtp method for creating fractals instead. We spent today creating
                    all the necessary folders and filed for our new collection, and well as looking at the documentation to get examples.
                    }
@blog-post["Day 38"]{
                     Today, the internet was out at the library, so we weren't able to work on the repository or our new collection. However, we did spend the day
                     working on some different coding prompts, both in racket and in other languages. I explained and wrote on the board my recursive
                     linked list solution from the day before.
                     I was also able to use my past skills in Scheme to build an answer for one of the racket prompts, using lots of recursion as well as a couple
                     helper functions. I explained and wrote this one on the board as well. However, I then learned about some even more
                     efficient solutions in racket that used map and apply. At first I didn't know what these functions did exactly, but then I learned that they
                     behave in a very similar manner to map and combine in Scratch.
                     }
}
               






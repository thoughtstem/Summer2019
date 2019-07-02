#lang scribble/manual
 
@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/bribe-tactic.rkt")

@(bio "David Ly" 
      "David.jpg"
      "Hi my name is David, I go to high school")

@blog{
      
@blog-post["Personal philosophy"]{
I want to make a game that people would enjoy
}

@blog-post["Day 6"]{
On the first day I learned about the philosophy of extended mind which is also known as distrubuted cognition.
I learn a little on how to navigate terminal.
}

@blog-post["Day 7"]{
On the second day we learned about the basic git commands such as  pulling adding and committing.
}

@(tactic->scribble
  (SDBribeTactic 'Coach
  'Team))
}

@blog-post["Day 8"]{
          Today we began working on cleaning the repository. To do this, each group made their own branches, made changes, and
          then opened pull requests. After a code review, our completed tasks were then pushed to the master branch. Specifically,
          my group working on standarsizing the file names for these blog posts.
          We also talked about the differences between specification and implementation when it comes to code and software
          engineering.
          }

@blog-post["Day 9"]{
            Today, we finalized our pull requests from yesterday and merged all the changes our groups made. We also talked
            about "Software Eating the World," an article from 2011 that describes the various ways in which technology and
            software are becoming the norm as opposed to previous models of business, products, etc.
            Later in the day, we continued resolving github tickets. Specifically, my partner and I fixed issues with the tactic
            files, including standardizing how the files are named as well as what kind of files they are (racket vs. scribble).
            }
On the second day I learned how to push, pull, and commit files into to the Git repository system
}

@blog-post["Day 8"]{
Today we began working on cleaning the repository. To do this, each group made their own branches, made changes, and
then opened pull requests. After a code review, our completed tasks were then pushed to the master branch. Specifically,
my group working on standarsizing the file names for these blog posts.We also talked about the differences between
specification and implementation when it comes to code and software engineering.
}

@blog-post["Day 9"]{
Today, we finalized our pull requests from yesterday and merged all the changes our groups made. We also talked
about "Software Eating the World," an article from 2011 that describes the various ways in which technology and
software are becoming the norm as opposed to previous models of business, products, etc. Towards the end of the day,
my partner and I closed a couple more tickets on github. The issues we resolved included
standardizing the new teaching tactic files, as in standardizing the way the files were named as well as the type of
file they were (racket vs. scribble).
            }
}

@blog-post["Day 8"]{
We talked about specification vs implementation. We also did our first pull request. We created new learning tactics that could be used
in the future.
}                    
@blog-post["Day 9"]{
We talked about the concept of software eating the world, which is the idea that everything is online and throughout software now and
that most people can get what they need without having to leave their house
}
}

#lang scribble/manual
@require[@for-label[Summer2019
                    racket/base]]

@(require "./common.rkt"
	ts-tactics)

@(bio "Ann Ryan"
	"ann-ryan.png"
	"Hello! I just finished my sophomore year at UC Davis. I have used C, Java, and MATLAB before joining this team."
)

@blog{

@blog-post["Personal Philosophy"]{
  It's not about me, it's about the team.
}
      
@blog-post["Day 1"]{
 We learned about distributed cognition (Dcog) and got our first partners for creating this team profile page together.
}

@blog-post["Day 2"]{
 We learned about how to use Git and Github and how to add, commit, push, and pull. 
}

 @blog-post["Day 3"]{
 We learned about refactoring which means restructuring code to make it more organized or easier to
 change without affecting the output of the code.
 }
 @blog-post["Day 4"]{
@(tactic->scribble
   (instruction 'Coach
          (hand-write
            (contents-of
              (back-of 'Challenge-Card))
            (bottom-half-of 'The-Whiteboard)))
   )
}
 @blog-post["Wk 3 Day 1"]{
  We learned about how to use the 'power tools' map, apply, curry, and compose in Racket.
 }
}

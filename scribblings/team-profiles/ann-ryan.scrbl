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
  We learned about how to use the 'power tools' map, apply, curry, and compose in the language of Racket.
  The map function applies a function to a list of arguments for that function. Map takes two parameters, one being a function
  and the other being a list (or several lists) and outputs a list.
  It takes the format:
  @codeblock{(map ____ ____)}
  The first blank is where the function you want to apply goes, and the second blank is where the list(s) of arguments goes.
  Here are some examples of how map works:
  @codeblock{(map string-append (list "Apple" "Banana")(list "hi" "there"))}
  When this code is run, it outputs a list with two strings: "Applehi" and "Bananathere." This is because map
  makes the function 'string-append' append the two arguments Apple and hi together because they are the first items
  in their respective list of arguments and Bananathere because they are both second in their lists and so on. 
 }
 @blog-post["Wk 3 Day 2"]{
 We learned how to go through a full development cycle. This is part of it.
 }
}

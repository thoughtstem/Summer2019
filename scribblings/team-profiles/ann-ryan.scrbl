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
  
  Example 1:
  @codeblock{(map circle (range 10))}
  This code takes a list of numbers created by 'range' which goes from 0 to 9, and applies the 'circle' function to the list.
  The circle function takes this number and outputs a circle image with that number as the diameter of the circle. So, this
  code effectively creates a list of 10 circle images increasing in diameter from 0 to 9. 

  Example 2:
  @codeblock{(map rectangle (range 10)(range 10))}
  This works in a similar way to the example above, except that the function used in map is now rectangle. Rectangle requires at least two
  numerical input arguments to run, so at least two lists of numbers of equal length must be inputted. This code outputs a list of rectangles
  with widths and heights going from 0 (nonexistant) to 1 (just a pixel) to 9.
 
  Example 3:
  @codeblock{(map string-append (list "Apple" "Banana")(list "hi" "there"))}
  When this code is run, it outputs a list with two strings: "Applehi" and "Bananathere." This is because map
  makes the function 'string-append' append the two arguments Apple and hi together because they are the first items
  in their respective list of arguments and Bananathere because they are both second in their lists and so on.

  The apply function works very similarly to the map function in that it also applies a given function to a list of arguments.
  It has the same inputs as the map function, but unlike map, apply returns a singular output of the given function rather than a list.
  It also has the same format as the map function.

  Example 1:
  @codeblock{(apply + (range 10))}
  This applies the addition function (+) to all of the numbers in the list of 0 through 9, and so returns the number 45.
  IMPORTANT: If one were to replace the function + with the function add1, this code would return an error. This is because the
  function add1 can only have one argument with no additional possible arguments. The function +, however, takes one argument but infinite
  additional arguments. Therefore, the whole range of numbers can be added together with +.
  
  Example 2:
  @codeblock{(apply cc-superimpose
   (map circle (range 10)))}
  This is an example of map and apply working together. The map function generates a list of circle images increasing in size, and the apply
  function uses the cc-superimpose function to put them all together in the same image. The "cc-" part of the superimpose function can
  tells apply to put these images over each other concentrically (center center). See the Racket documentation for other options. If
  this code is run, it would generate what looks like one big black circle, which is actually made up of several circles
  with diameters 0 to 9. To space out the circles more, lets look at another power tool.

  Compose is a power tool function that allows one to put a function within another function. In mathematical terms, it lets you use
  f(g(x)), where the syntax would be:
  @codeblock{(compose f g)}
  such that function g is inside of the function f. Compose works best when the output(s) of the function g is the same as the
  input(s) of the function f. There may be ways around this, but I don't know them.
  

  Here's an example of three functions we learned at work. It creates a list of alternating blue and purple fish.
  @codeblock{#lang racket
   (require pict)

   (define (make-color b)
   (if b "blue" "purple"))

   (define (make-fish c)
   (standard-fish 50 50 #:color c))

   (map (compose make-fish make-color even?) (range 15))}

  It works by taking two pre-defined functions, combining them with compose, and using all of these over a list of numbers to
  return a list of alternatingly colored fish.
 }
 @blog-post["Wk 3 Day 2"]{
  We learned how to go through a full development cycle. This is part of it.
  The development cycle we've been using typically goes as follows:
  
  1) Make pull from master so that you have the most up-to-date version (assuming you are working with a terminal that
  already has the repository cloned)

  2) Create a new, unique branch and switch your workplace into that branch.

  3) Make changes that you want to upload to the repository project.

  4) Git add the files to which you made changes that you want to keep

  5) Git commit -m "Message of what you did"

  6) Git push origin [branch name]

  7) Create a pull request in git hub and resolve anything unmerged automatcally.
 }
 @blog-post["Wk 3 Day 3"]{
 We added more examples for map, apply, compose, and curry. We practiced using the development cycle we learned yesterday, too.}

@blog-post["Week 5 Day 1"]{
 We met at the library and were introduced to two different sets of partners. People who already know how to create blogs taught those who were new to the learning week how to create a blog. We then practiced making katas for the language 2htdp/images and were walked through a tutorial of how to properly simplify code to make it more readable and less repetitive using definitions.}

@blog-post["Week 5 Day 2"]{
 We met at the office and created a sign language sign for each of our names. We split off into two teams where those with more coding experience would practice being in a leadership/management position. In this group, we created tickets or git issues for the other team to fulfill. Most of these include moving or deleting extraneous files in the git repository, as well as fixing bugs in previous kata collections.
}

@blog-post["Week 5 Day 3"]{
 I went through all of the tickets (or 'issues' on the repo) and the pull requests. I closed tickets that were already fulfilled and created new ones for the meme curriculum we are developing. I read all of the pull requests and either approved them or left comments and closed them. 
}

@blog-post["Week 5 Day 4"]{
 I created example katas to begin the new meme curriculum and figured out how to make a gif using Racket. I added the gif kata so that curriculum could be started, too.
}

@blog-post["Week 6 Day 5"]{
 I updated some of the onboarding documentation on the github and elaborated on tickets so that even if they are not completed this week, interns in the following weeks can work on them. 
}

@blog-post["Week ?? Day 1"]{"Today we are warming up with a blog post (this) and a github push.
 We are reading the repo README files and figuring out what to do next. I joined with Andres and
we are working on the web katas. I was stuck on a small bug for a long time that wouldn't enable
the code to run, but then fixed it with Stephen's help."}

@blog-post["Weed ?? Day 2"]{Stephen gave a mini-lecture on what to do in a coding 
interview. As a basic overview, first ask questions to clarify the challenge, then 
brainstorm solutions outloud (optional), then work a simpler example and put a function
 header and solve. Questions should clarify ambiguities and try to gather 
the context behind the challenge and even company inner workings if you get 
that far. They shouldn't be about how to code, but instead show that you 
already know how to do that and are a good communicator. 
}

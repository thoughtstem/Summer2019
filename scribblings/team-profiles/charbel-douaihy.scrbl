#lang scribble/manual
@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Charbel Douaihy"
      "no pic"
      "Howdy :) I'm Charbel Douaihy and I just finished my third year of college at UCSD.
I'm a Mathematics and Computer Science major.")

@blog{

@blog-post["Day 1"]{
My three map/apply examples are:
1) To subtract 1 from a list of 0 -> 99
   @codeblock{(map sub1 (range 100))}
2) A list of 20 clouds of width 100 and height ranging from 0 to 19
 @codeblock{(map (curry cloud 100)(range 20))}
3) A spiral!
   @codeblock{(apply cc-superimpose (map (compose circle sqr) (range 20)))}
}

@blog-post["Day 2"]{
Branching examples were done.
}
}



#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Unnamed Kata Collection}

A philosophical note to whomever is going to write this documenation:

This is not a Kata Collection.

@image{scribblings/img/pipe.jpg}

This is a web page that displays information that came from a kata
collection.  Neither the web page, nor the Scribble file that created it
are kata collections.

Keep that in mind as you get rid of all of this text and replace it
with all of the cool katas you're about to make.  Make your katas in
@racket[katas.rkt] and whatever @racket[rkt] files are appropriate.

That's where the kata collection goes.  C'est la pipe.
Keep the pipe in Racket, not in scribble. 

What to do in Scribble, you ask?  1) Any long-form prose about your collection.
2) Organizing a kata collection onto different pages or different sections of a
document. 3) Any meta information about your collection.  And so on.

@table-of-contents[]

@section{Katas}

These katas came from @racket[katas.rkt].
Edit the kata definitions there.

For custom rendering edit @racket[rendering.rkt].

@(render katas)

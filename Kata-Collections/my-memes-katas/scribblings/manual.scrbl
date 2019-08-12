#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          racket/runtime-path
          (except-in racket read do))

@(define-runtime-path here ".")

@title{Meme Katas}

@image[(build-path here "./img/Distracted-Boyfriend.png")]

These katas teach how to make memes using blank meme templates provided 
in the assets folder. There are three proposed difficulty levels:

Easy - importing a blank meme template and displaying it.

Medium - overlaying text on a blank meme template.

Hard - overlaying text/images/animated images on a blank meme template.

We have also included GIF katas because there isn't enough one can do with GIFs
to make it its own folder. The next person to work on this should transfer the rest
of the GIFs to the memes folder and then delete the GIF folder.

@table-of-contents[]

@section{Easy Katas}
@(render easy)

@section{Medium Katas}
@(render medium)

@section{Hard Katas}
@(render hard)

@section{GIF Katas}
@(render gifs)

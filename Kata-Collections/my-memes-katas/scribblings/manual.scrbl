#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Meme Katas}

These katas teach how to make memes using blank meme templates provided 
in the assets folder. There are three proposed difficulty levels:

Easy - importing a blank meme template and displaying it.

Medium - overlaying text on a blank meme template.

Hard - overlaying text/images/animated images on a blank meme template.

@table-of-contents[]

@section{Katas}

@(render katas)


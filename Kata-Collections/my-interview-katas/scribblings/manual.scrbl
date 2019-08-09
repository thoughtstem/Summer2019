#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          racket/runtime-path
          (except-in racket read do))

@(define-runtime-path here ".")

@title{Interview Katas}

This is a collection of katas that are intendend to prepare people for coding interviews. 
Many are drawn directly from resources like "Cracking the Coding Interview". 

@image[(build-path here "./img/cracking-the-coding-interview.png")]

When complete, this collection will cover basic algorithms, 
data structures, and discrete mathematics --
making it a fantastic foundation in basic computer science, whether or not you
have interviews looming in your near future.

Answers are given in Racket.  Students are encouraged to engage in the
fantastic learning activity of translating these answers into their language of choice.

NOTE: This collection is under active development.  The plan is to add more katas,
in the following categories:

@itemize{
  @item{@bold{Algorithms / Data Structures.} Strings and bitstrings.  Linked lists.  Trees.  Graphs.}
  @item{@bold{Object Oriented Programming.}  Modeling problems -- e.g. model a parking lot.}
  @item{@bold{Discrete Math.}  Number theory problems.  Primality.  Combinatorial problems.}
}

@table-of-contents[]

@section{Katas}
@(render katas)


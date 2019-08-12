#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          racket/runtime-path
          (except-in racket read do))

@(define-runtime-path here ".")

@title{Fractal Katas}

This is a collection of katas that teach people how to create fractals designs using
racket.

@image[(build-path here "./img/fractaltree.png")]

When complete, this collection will cover algorithms that use recursion--
making it a fantastic way to advance one's computer science knowledge and ability
to write efficient code.

Answers are given in Racket.  Students are encouraged to engage in the
fantastic learning activity of translating these answers into their language of choice.

NOTE: This collection is under active development.  The plan is to add more katas,
in the following categories:

@itemize{
  @item{@bold{Basic Fractal Designs.}}
  @item{@bold{Fractal Trees.}}
  @item{@bold{Fractal Animations (a constantly expanding fractal).}}
}

Below are katas related to building fractals.

@table-of-contents[]

@section{EASY}
@(render easy)

@section{MEDIUM}
@(render medium)
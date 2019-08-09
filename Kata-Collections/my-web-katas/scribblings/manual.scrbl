#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
	  racket/runtime-path
          (except-in racket read do))

@(define-runtime-path here ".")

@title{Web Katas}

This is a collection of katas that are intended to teach a student about basic 
front end web development with Racket.

@image[(build-path here "./img/webdesign.png")]

This collection is still a work in progress, but when completed it should cover
basic server creation with Racket, along with main HTML tags and CSS style attributes.

While all of the code is in Racket, the knowledge gained from these katas will make
HTML and CSS much easier to learn on their own.

The current organization of the katas is not final, nor are the categories themselves.
A good plan might be to continue to create katas for web development and see which common
themes can be coalesced into categories.

Possible Future Categories:

@itemize{
  @item{@bold{CSS Transitions.} Smooth changes when properties change.}
  @item{@bold{Forms.} HTML Forms}
  @item{@bold{Box Model} Margins, padding, borders.}
}

@table-of-contents[]

@section{Intro}
@(render intro)

@section{Lists}
@(render lists)

@section{Media Embedding}
@(render media)

@section{Text Styling}
@(render text)


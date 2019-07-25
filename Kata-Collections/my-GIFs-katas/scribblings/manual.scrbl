#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Proposed Fundamentals Katas}

These katas have not been categorized yet.

Note that most katas, so far, use a base langauge (e.g. fudamentals or data-sci),
but you can also make Katas for a super set language that you define.  See my demo 
kata below.  Adding functions to a super set language can allow you to make katas
in a language that may be more intersting to students.

@table-of-contents[]

@section{Superset Langauge Katas}

@(render superset-lang)

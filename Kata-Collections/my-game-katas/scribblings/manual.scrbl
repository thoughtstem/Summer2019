#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Game Katas}

These step-by-step kata sets teach how to use the 2htdp/universe library.

All katas in this folder aim to teach game-like interaction alongside animation.

@table-of-contents[]

@section{Katas}

@(render katas)


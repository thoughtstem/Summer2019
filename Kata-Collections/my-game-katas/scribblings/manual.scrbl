#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Game Katas}

These step-by-step kata sets teach how to use the 2htdp/universe library.
Progressing through each set is meant to become progressively harder, each kata teaching a different concept and guiding the user
in creating a different part until the user has built a finished product. 

All katas in this folder aim to teach game-like interaction alongside animation.

- Plane Game (un-finished) provides katas to create a simple game in which a user-controlled plane shoots bullets.

- Googly Eyes provides katas to create an interactive eye.

- Art Games provides katas to create a drawing game using the mouse.

- Rectangle Games teaches various, important animation concepts using rectangles for maximum simplicity.
- number games number games number games number games

@table-of-contents[]

@section{Rotating Eye Katas}
@(render rotating-eye)

@section{Plane Game Katas}
@(render plane-game)

@section{Rectangle Game Katas}
@(render rectangle-game)

@section{Art Game Katas}
@(render art-game)

@section{Number Game Katas}
@(render number-game)

@section{Click Game Katas}
@(render click-game)

@section{Snake Game Katas}
@(render snake-game)


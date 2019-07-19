#lang scribble/manual
(require plot)

@section{Intro}

@section{Plotting graphs}
@bold{Example 1}
Easy: Plot an exponential graph.
@codeblock{
           #lang racket
           (require plot)
           
           (plot (function sqr -2 1))
           }

@bold{Example 2}
Medium: Plot a dotted exponential graph.
@codeblock{
           #lang racket
           (require plot)
           
           (plot (function sqr -2 2
           #:style 'dot))
           }
@bold{Example 3}
Hard: Plot two exponential graphs with proper labesl and differing styles on the same plane.
@codeblock{
           #lang racket
           (require plot)
           
           (plot (list (axes)
           (function sqr -2 2
           #:color 2)))
           }
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
Hard: Plot two exponential graphs with proper labels and differing styles on the same plane.
@codeblock{
           #lang racket
           (require plot)
           
           (plot (list (axes)
           (function sqr -2 2
           #:color 2)))
           }

@bold{Example 4}
Hard: Plot two graphs (y = sin(x) and y = cos(x) )
with proper labels and with a domain between -pi and pi on the same plane.
@codeblock{
 #lang racket
 (require plot)

 (plot (list (axes)
 (function (lambda (x) (cos x))(- pi) pi #:label "y=cos(x)")
 (function (lambda (x) (sin x)) #:label "y=sin(x)" #:color 2)))}
 
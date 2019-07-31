#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Data Science Katas}

Below are katas related to data science, with a current emphasis on data visualization.

@table-of-contents[]

@section{Data Manipulation}
@(render data-manipulation)

@section{Data Visualization-Discrete Histograms}
@(render discrete-histogram)

@section{Data Visualization-Area Histograms}
@(render area-histogram)

@section{Data Visualization-Expontential Graphs}
@(render exponential-graph)

@section{Data Visualization-Square Arrows}
@(render square-arrow)

@section{Data Visualization-Error Bar Graphs}
@(render error-bar-graph)

@section{Data Visualization-Scatter Plots}
@(render scatter-plot)

@section{Data Visualization-Candlesticks}
@(render candlesticks)

@section{Data Visualization-3D-plots}
@(render Three-D-plot)

@section{Group A}
@(render grpa)

@section{Group B}
@(render grpb)

@section{Group C}
@(render grpC)

@section{Superset Lang}
@(render superset-lang)
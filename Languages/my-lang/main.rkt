#lang at-exp racket

(module reader syntax/module-reader
   my-lang)

(provide (all-from-out "./lang.rkt"))

(require "./lang.rkt")

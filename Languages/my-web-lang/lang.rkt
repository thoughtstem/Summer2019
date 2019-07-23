#lang at-exp racket

(provide
 (all-from-out "./lang/main.rkt")
 (all-from-out "./assets.rkt")
 (all-from-out 2htdp/image)
 (all-from-out 2htdp/universe)
 (all-from-out racket)
 #%module-begin)

(require "./lang/main.rkt")
(require "./assets.rkt")
(require 2htdp/image)
(require 2htdp/universe)


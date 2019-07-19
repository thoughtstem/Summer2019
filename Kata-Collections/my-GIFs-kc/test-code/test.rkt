#lang fundamentals

(require 2htdp/universe)
(require racket/draw)

(define image0 (bitmap "./test/0.png"))

(define index (range 44))

(define (make-file-path number) ((compose (curryr string-append ".png")
              (curry string-append "./test/") ~a) (modulo number 44)))

(define (make-images num) (bitmap/file (make-file-path num)))
 
(big-bang 0
 (on-tick add1)
  (to-draw make-images))


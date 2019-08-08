#lang info
(define collection "Summer2019")
(define deps '("base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(
                      ("scribblings/master-doc.scrbl" ())  
                      ("scribblings/Summer2019.scrbl" ())
                      ("scribblings/tips-and-tricks.scrbl" ())  

                      ("scribblings/new-katas/new-katas-a.scrbl" ())  
                      ("scribblings/new-katas/new-katas-b.scrbl" ())  
                      ("scribblings/new-katas/new-katas-c.scrbl" ())

                      ("scribblings/tactics-variants/tactics-variants-a.scrbl" ())  
                      ("scribblings/tactics-variants/tactics-variants-b.scrbl" ())
                      
                      ))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))

(define raco-commands
    '(("build-summer-2019" Summer2019/raco-tools/build-summer-2019 "builds summer 2019" 100)))

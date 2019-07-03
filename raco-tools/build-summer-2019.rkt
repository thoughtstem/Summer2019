#lang racket

(require raco/command-name
         net/sendurl)

(displayln (~a "Building Summer2019"))

(and
  (system (~a "raco setup Summer2019"))

  (send-url (~a "file://"
                     (build-path (current-directory) "doc/master-doc/index.html"))))

(displayln "Done")



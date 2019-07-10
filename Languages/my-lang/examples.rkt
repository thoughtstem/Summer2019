#lang racket

(provide
 (all-from-out
  "./examples/jason-examples.rkt"
  ; ==== PROVIDE MORE EXAMPLE FILES HERE ====
  
  ))

(require
  "./examples/jason-examples.rkt"
  ; ==== REQUIRE MORE EXAMPLE FILES HERE ====
  
  )


(require ts-kata-util
         Summer2019/Languages/my-lang/main)

;TODO: Fill this file with real proto katas.

(define-example-code racket 
                     easy-addition-001
  (+ 2 2))

(define-example-code racket 
                     medium-addition-001
  (+ 2 2 2 (+ 2 2)))

(define-example-code racket 
                     hard-addition-001

  (+ 2 2 2 (+ 2 2) (+ 2 2 2)))


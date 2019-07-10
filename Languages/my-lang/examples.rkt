#lang racket

#|(provide
 (all-from-out
  "./examples/jason-examples.rkt"
  ; ==== PROVIDE MORE EXAMPLE FILES HERE ====
  
  ))

(require
  "./examples/jason-examples.rkt"
  ; ==== REQUIRE MORE EXAMPLE FILES HERE ====
  
  )
|#

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

; ============ NEW KATAS 07/08/19 ===============

; map a function to a list of 10 numbers,
; 0 through 9, that reduces each value by 1
(define-example-code racket jason-easy-map-001
  
  (map sub1 (range 10))

  )


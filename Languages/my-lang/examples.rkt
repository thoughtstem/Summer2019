#lang racket

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

; ==== NEW MAP KATA ====
; map a function to a list of 10 numbers,
; 0 through 9, that reduces each value by 1
(define-example-code racket
                     easy-map-001
  (map sub1 (range 10)))
                     
#lang racket

(require ts-kata-util
         Summer2019/Languages/my-lang/main)


; ==== NEW MAP KATA ====
; map a function to a list of 10 numbers,
; 0 through 9, that reduces each value by 1
(define-example-code racket jason-easy-map-001
  
  (map sub1 (range 10))

  )

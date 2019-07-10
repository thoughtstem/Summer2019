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

;Create a solid blue, star-shaped polygon, with step count of 2.
;Hint: side-length, point count, step count, fill, color.
(define-exampe-code-1 racket nish
(star-polygon 40 5 2 "solid" "blue"))

;Create a regular 6-sided polygon (hexagon) with red outline.
;Hint: side-length, side count, fill, color.
(regular-polygon 40 6 "outline" "red")

;Create a Regular Polygon with 7 sides, that has one-third pull
;on each side, acute angle, and a purple outline.
;Hint: side-length, side-count, pull (the curve or pulling of the sides),
;angle, fill, color.
(pulled-regular-polygon 50 7 1/3 30 "outline" "purple")

;Create a solid green polygon with a list of 4 points that create an arrow shape.
;**Must require lang/posn in order to "make-posn"
;Hint: list of vertices, fill, color
(polygon(list(make-posn 0 0)
               (make-posn -10 20)
               (make-posn 60 0)
               (make-posn -10 -20))
               "solid" "green")

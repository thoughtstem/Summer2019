#lang racket

(require ts-kata-util)


(define-example-code Summer2019/Languages/my-fractals-lang/main superset-lang-demo
   (face))

(define-example-code Summer2019/Languages/my-fractals-lang/main superset-lang-demo-2
  (define (spin-face r)
    (rotate r (face)))

  (big-bang 0
    (on-tick add1)
    (to-draw spin-face)))
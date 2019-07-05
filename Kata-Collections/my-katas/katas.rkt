#lang racket

(provide katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas)

(define katas
  (lang->kata-collection 'Summer2019/Languages/my-lang))

(define-sub-collections katas
                        easy
                        medium
                        hard)



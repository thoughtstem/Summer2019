#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-fundamentals-lang)
    'superset-lang-demo
    (read "This is a demo kata to show you how to make katas with a superset lang and a stimulus.")
    ))

(define-sub-collections katas
  superset-lang)


#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-data-sci-lang)

    ;To add a new kata, add two new lines of code in this block
    ; 1) 'the-name-of-your-kata
    ; 2) (read "your kata's stimuli. ex: "Create a circle...")

    'discrete-histogram-001
    (read "Plot a discrete histogram with 3 horizontal bars.")
    ))

(define-sub-collections katas
			discrete-histogram-katas)

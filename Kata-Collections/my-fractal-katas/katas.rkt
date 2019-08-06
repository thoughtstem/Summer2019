#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-fractal-lang)

    ;Fill in stimuli and examples in this format:
    ;'001-easy
    ;(read "Put stimuli here.")
))

(define-sub-collections katas
                        easy
                        medium
                        hard
                        
  )


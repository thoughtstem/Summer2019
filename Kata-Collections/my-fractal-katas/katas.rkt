#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-fractal-lang)

    ;Fill in stimuli and examples in this format:
    ;'001-easy
    ;(read "Put stimuli here.")

    '001-easy
    (read "Build the Sierpinski triangle fractal.")

    '001-medium
    (read "Build the Sierpinski carpet fractal.")

    '002-medium
    (read "Write the function that builds one edge of the Koch snowflake.")

    '002-easy
    (read "Build a full Koch snowflake made up of 3 edges from the last example.")
    ))

(define-sub-collections katas
                        easy
                        medium
                        hard

  ; ==== ADD MORE SUB COLLECTIONS HERE ====

                        sophie-ezra
                        
  )


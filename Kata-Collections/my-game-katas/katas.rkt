#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-game-lang)
    'Rotating-Eye
    (read "This is a demo kata to show you how to make katas with a superset lang and a stimulus.")
    ))

(define-sub-collections katas
                        Interactive-Eye
                        Plane-Game
  )



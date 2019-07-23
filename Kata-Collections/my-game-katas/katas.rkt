#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define googly-eye
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-game-lang)

    ;To add a new kata, add two new lines of code in this block
    ; 1) 'the-name-of-your-kata
    ; 2) (read "your kata's stimuli. ex: "Create a circle...")

    'rotating-eye
    (read "Make an eye from an outlined circle with a smaller solid black circle inside 
	  of it (the pupil). Make the eyes rotate counterclockwise over time.")

    ))





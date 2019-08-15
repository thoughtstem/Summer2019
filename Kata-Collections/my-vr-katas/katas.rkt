#lang racket

;=== NOTES ===
;

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
   (lang->kata-collection 'Summer2019/Languages/my-vr-lang)

   ;To add a new kata, add two new lines of code in this block
   ; 1) 'the-name-of-your-kata
   ; 2) (read "your kata's stimuli. ex: "Create a circle...")
   
    'shapes~box-001
    (read "Write a function that produces a blue box on a black background")
  
  
   ))


(define-sub-collections katas
  shapes
  )

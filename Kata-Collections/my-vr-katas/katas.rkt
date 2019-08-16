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
    
    'shapes~sphere-002
    (read "Code a scene with a sphere")
    
    'shapes~size-003
    (read "Code a scene with a large cylinder")

    'shapes~snowman-001
    (read "Create a scene with a white sphere on a light blue background.")

    'shapes~snowman-002
    (read "Create a scene with a snowman on a light blue background.")

    'shapes~snowman-003
    (read "Create a scene with a snowman and tree on a light blue background.")

    'shapes~snowman-004
    (read "Create a scene with a snowman and tree on a light blue background with snow.")

   ))


(define-sub-collections katas
  shapes
  )

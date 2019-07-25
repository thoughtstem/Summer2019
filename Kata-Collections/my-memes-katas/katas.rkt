#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-memes-lang)

    ;To add a new kata, add two new lines of code in this block
    ; 1) 'the-name-of-your-kata
    ; 2) (read "your kata's stimuli. ex: Create a circle...")

    `001-easy
    (read "Display the blank Drake.png template (inside the assets folder")

    `002-easy
    (read "Display the blank Confused-Anime.png template (inside the assets folder")

    `001-medium
    (read "Add text to the Drake.png template to make it a meme!")

    `002-medium
    (read "Add text to the Confused-Anime.png template to make it a meme!")

    `001-hard
    (read "Add an image of interns, the racket-logo, and text, to the Confused-Anime.png template.")
    ))




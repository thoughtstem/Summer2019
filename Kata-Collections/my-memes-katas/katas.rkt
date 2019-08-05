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

    `003-easy
    (read "Display the blank Surprised-Pikachu.png template (inside the assets folder")

    `001-medium
    (read "Add text to the Drake.png template to make it a meme!")

    `002-medium
    (read "Add text to the Confused-Anime.png template to make it a meme!")
    
    '003-medium
    (read "Make a Pooh meme. Add text in the white space next to each Pooh image in the meme.")
    
    '004-medium
    (read "Make a button meme. Put text over the button, as well as text over the moving hand.")

    '005-medium
    (read "Make a distracted boyfriend meme. Put text over the girlfriend, the boyfriend, and the new girl")
    
    '006-medium
    (read "Make a Headache meme. Add text below the image of the full head headache.")

    '007-medium
    (read "Make a Pikachu meme. Add text to the white space above the meme image.")
    
    `001-hard
    (read "Add an image of interns, the racket-logo, and text, to the Confused-Anime.png template.")
    ))


(define-sub-collections katas
			easy
			medium
			hard)


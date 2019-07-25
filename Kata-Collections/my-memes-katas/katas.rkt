#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-memes-lang)

    '001-button-meme
    (read "Make a button meme. Put text over the button, as well as text over the moving hand.")

    '002-distracted-boyfriend-meme
    (read "Make a distracted boyfriend meme. Put text over the girlfriend, the boyfriend, and the new girl")

    '003-headache-meme
    (read "Make a Headache meme. Add text below the image of the full head headache.")

    '004-pikachu-meme
    (read "Make a Pikachu meme. Add text to the white space above the meme image.")

    '005-pooh-meme
    (read "Make a Pooh meme. Add text in the white space next to each Pooh image in the meme.")

    ))




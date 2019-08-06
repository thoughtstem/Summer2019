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
    (read "Display the blank Pooh.png template (inside the assets folder")

    `004-easy
    (read "Display the blank Button.png template (inside the assets folder") 

    `005-easy
    (read "Display the blank Distracted-Boyfriend.png template (inside the assets folder") 

    `006-easy
    (read "Display the blank Types-of-Headaches.png template (inside the assets folder") 

    `007-easy
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

    `002-hard
    (read "Add an image Add an image of interns and text to the Me-Explaining.png template.")

    `003-hard
    (read "Add an image of chromebook, and text, to the drake.png template.")
    
    `001-gifs-e
    (read "Write a function that will iterate through the file paths in order to make the world
    look as if it is spinning.")

    `002-gifs-e
    (read "Create a gudetama that rotates on itself atop a yellow background.")

    `003-gifs-m
    (read "Create the function that places text over the background image.")

    `004-gifs-m
    (read "Create a GIF that has 9 gudetamas rotating atop a yellow background.")

    `005-gifs-h
    (read "Write a program that iterates through images with superimposed text.")

    `006-gifs-e
    (read "Write a function that will iterate through file paths to create a nyan cat GIF.")

    `007-gifs-e
    (read "Create a nyan cat GIF with text below the cat.")
))


(define-sub-collections katas
			easy
			medium
			hard
			gifs)


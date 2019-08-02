#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-game-lang)

    '001-rotating-eye
    (read "Make an eye from an outlined circle with a smaller solid black circle inside 
	  of it (the pupil). Make the eyes rotate counterclockwise over time.")
   '002-rotating-eye
   (read "Make an eye with a pupil that rotates when the mouse is pressed in the window.")
   '003-rotating-eye
   (read "Make an eye with a pupil that rotates when the mouse is clicked on the eyeball.
Hint: Use the distance formula! The center of the eye is located at 30 30. The radius of the eye is 30.")
   '004-rotating-eye
   (read "Make an eye with pupils that follow the location of your mouse Hint: Remember your trigonomety! If you
know the x and y distance between two points, you can find the angle between them. Use (atan y x), and remember
that the signs of x and y matter!")
   '005-rotating-eye
   (read "Kata 5: Make an eye with pupils that follow the location of your mouse. When you click the eye, make the entire eye area turn black, as if blinking.")
   '006-rotating-eye
   (read "Kata 6: Use your blinking, following eye from the 5th eye kata to give yourself the ability to control wherever your eye appears in the window. Ex: Draw an eye 30 units right and 40 units below the center.")


   '001-plane-game
   (read "Make a plane at the bottom of the window that moves left and right. Use the plane.png image in this folder.")
   '002-plane-game
   (read "Make a window where a square appears on tick 50. This kata teaches the usage of structs (in structs)
and adding things to lists.")
   '003-plane-game
   (read " Make a bullet that starts at the bottom of the window. When space is pressed,
the bullet is fired upward. Once it leaves the screen at the top, it returns to
its starting position, where it could be fired once again..")

   
    '001-rectangle-game
   (read "Draw a red rectangle.")
   '002-rectangle-game
   (read "Make a spinning red rectangle.")
   '003-rectangle-game
   (read " Create a rectangle whose color changes between red and green intermittently.")
    '004-rectangle-game
   (read "Create a spinning rectangle that bounces back and forth.")
   '005-rectangle-game
   (read "Create a spinning rectangle that bounces back and forth and changes colors intermittently.")

   '001-art-game
   (read "Draw a purple pulled polygon. Make sure to require lang/posn (and for the following katas)")
   '002-art-game
   (read "Draw stars in a night sky")
   '003-art-game
   (read "Make a program that draws a sky with a sun when the mouse isn't being pressed, and a night sky with stars and a moon when it is being pressed.")
   '004-art-game
   (read "Make a rectangle that moves with your mouse when you click and drag on it.")
   '005-art-game
   (read "Make a program where a red rectangle follows your mouse.")
   '006-art-game
   (read "Use your mouse to draw. (Draw red circles wherever the mouse has been)")
   '007-art-game
   (read "Make a drawing game where the mouse only draw when it's being pressed.")


   '001-number-game
   (read "Make two constants, upper and lower and set them to 100 and 1 respectively. Run them to make sure they work.")
   '002-number-game
   (read  "Implement four functions (three functional ones and one 'winning' function) that allow the computer to guess a number that the user picks, in the range of 1- 100.
One should be for if the guess is higher, one for if the guess is lower, and one for generating and printing the next guess. Test your new functions!")
   '003-number-game
   (read "Add a main function that explains the rules and how to call functions to the player, initialises the upper and lower functions, and starts the game.")

   '001-click-game
   (read "Make a red square appear in a random location on the screen.")
   '002-click-game
   (read "Make a red square appear in a random location on the screen, and have it turn white when you click on it.")
   ))

(define-sub-collections katas
			rotating-eye
			plane-game
			rectangle-game
			art-game
                        number-game
                        click-game)

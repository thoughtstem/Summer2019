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

   '001-plane-game
   (read "Make a plane at the bottom of the window that moves left and right. Use the plane.png image in this folder.")

   '002-plane-game
   (read "Make a window where a square appears on tick 50. This kata teaches the usage of structs (in structs)
and adding things to lists.")

   '003-plane-game
   (read " Make a bullet that starts at the bottom of the window. When space is pressed,
the bullet is fired upward. Once it leaves the screen at the top, it returns to
its starting position, where it could be fired once again..")))

(define-sub-collections katas
			rotating-eye
			plane-game)

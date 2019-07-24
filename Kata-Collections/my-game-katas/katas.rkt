#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define googly-eye
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-game-lang)

    'rotating-eye
    (read "Make an eye from an outlined circle with a smaller solid black circle inside 
	  of it (the pupil). Make the eyes rotate counterclockwise over time.")

   'window-click-rotating-eye
   (read "Make an eye with a pupil that rotates when the mouse is pressed in the window.")

   'clickable-rotating-eye
   (read "Make an eye with a pupil that rotates when the mouse is clicked on the eyeball.
Hint: Use the distance formula! The center of the eye is located at 30 30. The radius of the eye is 30.")


   'following-googly-eye
   (read "Make an eye with pupils that follow the location of your mouse Hint: Remember your trigonomety! If you
know the x and y distance between two points, you can find the angle between them. Use (atan y x), and remember
that the signs of x and y matter!")))

  
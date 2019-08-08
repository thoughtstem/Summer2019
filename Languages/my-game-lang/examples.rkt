#lang racket

(require ts-kata-util lang/posn)

;==== Googly Eyes ===

; Kata1: Make an eye from an outlined circle with a smaller solid black circle
; inside of it (the pupil). Make the eyes rotate counterclockwise over time.

(define-example-code Summer2019/Languages/my-game-lang/main 001-rotating-eye

  ; TO-DRAW
  (define (create-rotating-eye angle)
    (rotate angle eye))

  ; The eye sprite
  (define eye (overlay/offset (circle 12 "solid" "black") 0 18
                              (circle 30 "outline" "black")))

  (big-bang 0
    (on-tick add1)
    (to-draw create-rotating-eye)))

; Kata2: Make an eye with a pupil that rotates when the mouse is pressed in the window.

(define-example-code Summer2019/Languages/my-game-lang/main 002-rotating-eye
  
  ; TO-DRAW
  (define (create-rotating-eye angle)
    (rotate angle eye))

  ; Eye sprite
  (define eye (overlay/offset (circle 12 "solid" "black") 0 18
                              (circle 30 "outline" "black")))

  ; Checks mouse input
  (define (mouse-handler w x y me)
    (cond
      [(mouse=? me "button-down") (+ w 30)]
      [else w]))

  (big-bang 0
    (to-draw create-rotating-eye)
    (on-mouse mouse-handler)))

; Kata3: Make an eye with a pupil that rotates when the mouse is clicked on the eyeball.
; Hint: Use the distance formula! The center of the eye is located at 30 30.
; The radius of the eye is 30.

(define-example-code Summer2019/Languages/my-game-lang/main 003-rotating-eye
  
  ; TO-DRAW
  (define (create-rotating-eye angle)
    (rotate angle eye))

  ; Eye sprite
  (define eye (overlay/offset (circle 12 "solid" "black") 0 18
                              (circle 30 "outline" "black")))

  ; Checks mouse input
  (define (mouse-handler w x y me)
    (cond
      [(and (mouse=? me "button-down") (check-posn x y)) (+ w 30)]
      [else w]))

  ; Checks if the mouse's posn is inside of the eye
  (define (check-posn x y)
    (if (< (calc-distance x y 30 30) 30) #t #f))

  ; Distance formula
  (define (calc-distance x1 y1 x2 y2)
    (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1)))))

  (big-bang 0
    (to-draw create-rotating-eye)
    (on-mouse mouse-handler)))

; Kata4: Make an eye with pupils that follow the location of your mouse

; Hint: Remember your trigonomety! If you know the x and y distance between two points,
; you can find the angle between them. Use (atan y x), and remember that the signs of
; x and y matter!

(define-example-code Summer2019/Languages/my-game-lang/main 004-rotating-eye
  ; TO-DRAW
  (define (create-rotating-eye angle)
    (place-image (rotate angle eye)
                 250 250
                 (empty-scene 500 500)))

  ; Eye sprite
  (define eye (overlay/offset (circle 12 "solid" "black") 0 18
                              (circle 30 "outline" "black")))

  ; Handles mouse event
  (define (mouse-handler w x y me)
    (cond
      [(mouse=? me "move") (calc-angle x y)]
      [else w]))

  ; Calculates the angle between the center of the eye and where the mouse is
  (define (calc-angle x y)
    (+ 180 (/ (* 180 (atan (- x 250) (- y 250))) pi)))

  (big-bang 0
    (to-draw create-rotating-eye)
    (on-mouse mouse-handler)))


(define-example-code Summer2019/Languages/my-game-lang/main 005-rotating-eye
  ;Kata 5: Make an eye with pupils that follow the location of your mouse.
  ;When you click the eye, make the entire eye area turn black, as if blinking.

  ; Constant for eye's x and y coordinates
  (define EYE-X 250)
  (define EYE-Y 250)

  ;====== Eye Drawing ==============

  ; TO-DRAW
  (define (create-spinning-eye angle)
    (if (= angle -1) (closed-eye) (open-eye angle)))

  ; Draws open eye
  (define (open-eye angle)
    (place-image (rotate angle eye)
                 EYE-X EYE-Y
                 (empty-scene 500 500)))
  
  ; Draws closed eye
  (define (closed-eye)
    (place-image (circle 30 "solid" "black")
                 EYE-X EYE-Y
                 (empty-scene 500 500)))
  
  ; Eye sprite
  (define eye (overlay/offset (circle 12 "solid" "black") 0 18
                              (circle 30 "outline" "black")))

  ;====== Mouse Event ==============

  ; Handles mouse event
  (define (mouse-handler w x y me)
    (cond
      [(mouse=? me "move") (calc-angle x y)]
      [(and (mouse=? me "button-down") (check-posn x y)) -1]
      [(and (mouse=? me "button-up") (check-posn x y)) (calc-angle x y)]
      [else w]))

  ; Calculates the angle between the center of the eye and where the mouse is
  (define (calc-angle x y)
    (+ 180 (/ (* 180 (atan (- x EYE-X) (- y  EYE-Y))) pi)))

  ; Checks if the mouse's posn is inside of the eye
  (define (check-posn x y)
    (if (< (calc-distance x y EYE-X EYE-Y) 30) #t #f))

  ; Distance formula
  (define (calc-distance x1 y1 x2 y2)
    (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1)))))

  (big-bang 0
    (to-draw create-spinning-eye)
    (on-mouse mouse-handler)))


;Kata 6: Use your blinking, following eye from the 5th eye kata to give yourself the
;ability to control wherever your eye appears in the window.
;Ex: Draw an eye 30 units right and 40 units below the center.

(define-example-code Summer2019/Languages/my-game-lang/main 006-rotating-eye

  ; Defines one animated eye, distance adjusts the eye away from the center.
  (define (animated-eye x-distance y-distance)
  
    ;====== Eye Drawing ==============
  
    ; Constant for eye's x and y coordinates
    (define EYE-X (+ 250 x-distance))
    (define EYE-Y (+ 250 y-distance))
  
    ; TO-DRAW
    (define (create-spinning-eye angle)
      (if (= angle -1) (closed-eye) (open-eye angle)))

    ; Draws open eye
    (define (open-eye angle)
      (place-image (rotate angle eye)
                   EYE-X EYE-Y
                   (empty-scene 500 500)))
  
    ; Draws closed eye
    (define (closed-eye)
      (place-image (circle 30 "solid" "black")
                   EYE-X EYE-Y
                   (empty-scene 500 500)))
  
    ; Eye sprite
    (define eye (overlay/offset (circle 12 "solid" "black") 0 18
                                (circle 30 "outline" "black")))

    ;====== Mouse Event ==============

    ; Handles mouse event
    (define (mouse-handler w x y me)
      (cond
        [(mouse=? me "move") (calc-angle x y)]
        [(and (mouse=? me "button-down") (check-posn x y)) -1]
        [(and (mouse=? me "button-up") (check-posn x y)) (calc-angle x y)]
        [else w]))

    ; Calculates the angle between the center of the eye and where the mouse is
    (define (calc-angle x y)
      (+ 180 (/ (* 180 (atan (- x EYE-X) (- y  EYE-Y))) pi)))

    ; Checks if the mouse's posn is inside of the eye
    (define (check-posn x y)
      (if (< (calc-distance x y EYE-X EYE-Y) 30) #t #f))

    ; Distance formula
    (define (calc-distance x1 y1 x2 y2)
      (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1)))))

    (big-bang 0
      (to-draw create-spinning-eye)
      (on-mouse mouse-handler)))


  ; Draws an eye 30 units right and 40 units below the center
  (animated-eye 30 40))


;==== Plane Game ===

; Kata1: Make a plane at the bottom of the window that moves left and right
; Use the plane.png image in this folder

(define-example-code Summer2019/Languages/my-game-lang/main 001-plane-game
  (define IMAGEWIDTH 100)

  ; TO-DRAW
  (define (create-red-square x)
    (place-image (scale 0.2 (bitmap "./plane.png"))
                 (+ (/ IMAGEWIDTH 2) x) 585
                 (empty-scene IMAGEWIDTH 600)))

  ; Takes in keys
  (define (moveit x k)
    (+ x (keypress->distance k x)))

  ; Checks which key is pressed
  (define (keypress->distance key x)
    (cond [(key=? key "left")     (if(<= x (- (/ IMAGEWIDTH 2) IMAGEWIDTH)) 0 -5)]
          [(key=? key "right")    (if(>= x (/ IMAGEWIDTH 2)) 0 5)]
          [else 0]))

  (big-bang 0
    (on-key moveit)
    (to-draw create-red-square)))

; Kata2: Make a window where a square appears on tick 50
; This kata teaches the usage of structs (in structs) and adding things to lists
; Extra Challenge - Using ticks, make a new square at a different position every 4 ticks

(define-example-code Summer2019/Languages/my-game-lang/main 002-plane-game
  (define IMAGEWIDTH 100)

  ; Our structs
  (struct world (sqrs tick) #:transparent #:mutable)
  (struct posn (x y) #:transparent)
  (struct sqr (posn) #:transparent)

  (define START-POSN (posn 100 100))

  ;-----------------------------------------

  ; Adds a sqr struct object to the world's list of sqrs
  (define (sqr-to-world my-world)
    (set-world-sqrs! my-world (cons (new-sqr) (world-sqrs my-world))))

  ; One sqr at START-POSN
  (define (new-sqr)
    (sqr START-POSN))

  ; Increments the tick in the my world struct
  (define (incr-tick my-world)
    (struct-copy world my-world [tick (+ (world-tick my-world) 1)]))

  ; The starting world definition
  (define my-world
    (world '() 0))

  ;-------------------------------------------
  ; Rendering the world

  ; TO-DRAW
  (define (render-world my-world)
    ; Checks when we are at tick 50
    (if (= (world-tick my-world) 50) (sqr-to-world my-world) 0)
    (sqrs+scene (world-sqrs my-world)
                (empty-scene 200 200 "black")))

  ; Calls the placing of all images in the sqrs list
  (define (sqrs+scene sqrs scene)
    (foldl (λ (s scene)
             (img+scene (sqr-posn s)
                        (square 10 "solid" "yellow")
                        scene))
           scene sqrs))

  ; Places the images
  (define (img+scene posn img scene)
    (place-image img (posn-x posn) (posn-y posn) scene))
  
  (big-bang my-world
    (on-tick incr-tick)
    (to-draw render-world)))

; Kata 3: Make a bullet that starts at the bottom of the window. When space is pressed,
; the bullet is fired upward. Once it leaves the screen at the top, it returns to
; its starting position, where it could be fired once again.

; Our bullet is a solid rect that is longer vertically than horizontally is colored gold.
; Resetting the tick is recommended.

(define-example-code Summer2019/Languages/my-game-lang/main 003-plane-game
  (define IMAGEWIDTH 100)

  (struct bullet(tick shoot) #:transparent #:mutable)

  ; TO-DRAW
  (define (up-moving-square b)
    (place-image (rectangle 5 15 "solid" "gold")
                 150 (if (and (bullet-shoot b) (> (- 600 (* (modulo (bullet-tick b) 120) 5)) 0))
                         (- 600 (* (modulo (bullet-tick b) 120) 5))
                         600)
                 (empty-scene 600 600)))

  (define (new-bullet b)
    (up-moving-square b))

  ; Checks key pressed
  (define (keypress->air key)
    (cond
      [(key=? key " ") (new-bullet (bullet 1 #t)) #t]))

  ; Resets the tick
  (define (sqr-handle-key b k)
    (if (not (bullet-shoot b))
        (struct-copy bullet b [shoot (or (bullet-shoot b) (keypress->air k))][tick 1])
        (struct-copy bullet b [shoot (or (bullet-shoot b) (keypress->air k))])))

  ; Resets the shoot and increments the tick
  (define (incre-tick b)
    (if (= (modulo (bullet-tick b) 120) 0)
        (struct-copy bullet b [shoot #f][tick (+ 1 (bullet-tick b))])
        (struct-copy bullet b [tick (+ 1 (bullet-tick b))])))

  ; Our bullet state created from the struct
  (define b
    (bullet 1 #f))

  (big-bang b
    (on-tick incre-tick)
    (on-key sqr-handle-key)
    (to-draw up-moving-square)))

;==== Rectangle Game ===

;Kata 1: Draw a red rectangle
(define-example-code Summer2019/Languages/my-game-lang/main 001-rectangle-game
  ;A rectangle is drawn at position (100,100) in a 200 by 200 frame.
  (define (my-rectangle state)
    (place-image rect 100 100
                 (empty-scene 200 200)))

  ;rect is a function that draws our rectangle.
  (define rect
    (rectangle 100 100 'solid 'red) )

  ;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
  ;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
  ;as the first parameter.
  (big-bang 0
    (to-draw my-rectangle)))

;Kata 2: Draw a spinning rectangle
(define-example-code Summer2019/Languages/my-game-lang/main 002-rectangle-game
  ;spinning-rectangle rotates the rectangle by theta. It is drawn at position (100,100) in a 200 by 200 frame.
  (define (spinning-rectangle theta)
    (place-image (rotate theta rect)100 100
                 (empty-scene 200 200)))

  ;rect is a function that draws our rectangle.
  (define rect
    (rectangle 100 100 'solid 'red) )

  ;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
  ;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
  ;as the first parameter.
  (big-bang 0
    (on-tick add1)
    (to-draw spinning-rectangle))
  )

;Kata 3: Create a rectangle whose color changes between red and green intermittently
(define-example-code Summer2019/Languages/my-game-lang/main 003-rectangle-game
  ;defines a boolean to determine the color
  (define rectColor #t)

  ;defines color rectangle function which calls the rect function. Alternates the color based on mod 10 of the clock from the big bang
  ;places image on a 200 by 200 frame
  (define (color-rectangle state)
    (if (equal? (modulo state 10) 0) (set! rectColor (not rectColor)) (set! rectColor rectColor))
    (place-image (rotate state (rect rectColor))100 100
                 (empty-scene 200 200)))

  ;defines the function drawing the rectangle. Depending on boolean input will make it either red or green
  (define (rect rectColor)
    (if rectColor
        (rectangle 100 100 'solid 'red)
        (rectangle 100 100 'solid 'green)))

  ;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
  ;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
  ;as the first parameter.
  (big-bang 0
    (on-tick add1)
    (to-draw color-rectangle 200 200)))

;Kata 4: Create a spinning rectangle that bounces back and forth
(define-example-code Summer2019/Languages/my-game-lang/main 004-rectangle-game
  ;Which way the rectangle is moving. True means going to the right.
  (define direction #t)

  (define (spinning-rectangle state)
    ;Every 200 ticks chang the direction the rectangle is moving
    (if (equal? (modulo state 200) 0) (set! direction (not direction)) (set! direction direction))
    ;200 mod state is how many ticks have passed since it switched direction
    ;Depending on the direction the rectangle is moving, draw a rectangle at 200-(200 mod state) or 200 mod state.
    (if direction
        (place-image (rotate state rect) (modulo state 200) 100
                     (empty-scene 200 200))
        (place-image (rotate state rect) (- 200 (modulo state 200)) 100
                     (empty-scene 200 200))))

  ;Draws the rectangle
  (define rect
    (rectangle 10 10 'solid 'red) )

  ;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
  ;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
  ;as the first parameter.
  (big-bang 0
    (on-tick add1)
    (to-draw spinning-rectangle 200 200)))

;Kata 5: Create a spinning rectangle that bounces back and forth and changes colors intermittently.
(define-example-code Summer2019/Languages/my-game-lang/main 005-rectangle-game
  ;defines a boolean to determine the color
  (define rectColor #t)

  ;Which way the rectangle is moving. True means going to the right.
  (define direction #t)

  ;defines color rectangle function which calls the rect function. Alternates the color based on mod 10 of the clock from the big bang
  ;places image on a 200 by 200 frame
  (define (spinning-rectangle state)
    (if (equal? (modulo state 10) 0) (set! rectColor (not rectColor)) (set! rectColor rectColor))
    ;Every 200 ticks chang the direction the rectangle is moving
    (if (equal? (modulo state 200) 0) (set! direction (not direction)) (set! direction direction))
    ;200 mod state is how many ticks have passed since it switched direction
    ;Depending on the direction the rectangle is moving, draw a rectangle at 200-(200 mod state) or 200 mod state.
    (if direction
        (place-image (rotate state (rect rectColor)) (modulo state 200) 100
                     (empty-scene 200 200))
        (place-image (rotate state (rect rectColor)) (- 200 (modulo state 200)) 100
                     (empty-scene 200 200))))

  ;defines the function drawing the rectangle. Depending on boolean input will make it either red or green
  (define (rect rectColor)
    (if rectColor
        (rectangle 20 20 'solid 'red)
        (rectangle 20 20 'solid 'green)))

  ;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
  ;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
  ;as the first parameter.
  (big-bang 0
    (on-tick add1)
    (to-draw spinning-rectangle 200 200)))

;==== Art Game ===
;Kata 1: Draw a purple pulled polygon
(define-example-code Summer2019/Languages/my-game-lang/main 001-art-game
  ;A rectangle is drawn at position (100,100) in a 200 by 200 frame.
  (define (my-rectangle state)
    (place-image poly 100 100
                 (empty-scene 200 200)))

  ;rect is a function that draws our pulled polygon.
  (define poly
    (pulled-regular-polygon 50 5 1.1 140 "solid" "purple") )

  ;big-bang starts the world. 0 is the initial state of the game's internal clock. add1 is called after every tick of the clock.
  ;spinning-rectangle is called everytime something about the image shown changes. They both automatically pass the clock time
  ;as the first parameter.
  (big-bang 0
    (to-draw my-rectangle)))

;Kata 2: Draw stars in a night sky
(define-example-code Summer2019/Languages/my-game-lang/main 002-art-game
  ;define the golden star shape that accepts size as an input
  (define (myStar size)
    (star size 'solid 'gold))

  ;define 2 lists, one for the shapes that are going to make the night sky and another for their positions
  (define pos (list (make-posn 50 50)(make-posn 250 80)(make-posn 100 150)(make-posn 120 50)(make-posn 50 200)))
  (define shapesNight (list (circle 40 'solid 'white) (myStar 20) (myStar 30) (myStar 10) (myStar 40)))

  ;use place-images to place all of the night sky shapes in their respective positions on a midnight blue background 
  (define (draw-brush state)
    (place-images shapesNight pos  
                  (empty-scene 300 300 "midnight blue" )))

  ;create the universe and call draw-brush to draw everything
  (big-bang 0
    (to-draw draw-brush 300 300))
  )

;Kata3: Make a program that draws a sky with a sun when the mouse isn't being pressed, and a night sky with stars and a moon when it is being pressed.
(define-example-code Summer2019/Languages/my-game-lang/main 003-art-game
  ;myStar takes the size of the star and returns a gold star shape of that size
  (define (myStar size)
    (star size 'solid 'gold))

  ;Whether to draw the night (as opposed to day)
  (define night #f)

  ;pos is a list of where the night shapes are drawn. shapesNight is a list of shapes that are drawn when night is true.
  ;shapesDay is the sun shape
  (define pos (list (make-posn 50 50)(make-posn 250 80)(make-posn 100 150)(make-posn 120 50)(make-posn 50 200)))
  (define shapesNight (list (circle 40 'solid 'white) (myStar 20) (myStar 30) (myStar 10) (myStar 40)))
  (define shapesDay (circle 40 'solid 'yellow))

  ;Draws the night images if night is true and the day image if night is false
  (define (draw-brush state)
    (if night
        (place-images shapesNight pos  
                      (empty-scene 300 300 "midnight blue" ))
        (place-image shapesDay 50 50  (empty-scene 300 300 "sky blue"))))

  ;If the mouse is being pressed, set night to true. Otherwise, set it to false.
  (define (mouse-handler w x y me)
    (if (mouse=? me "button-down") (set! night #t) (set! night #f)))

  ;Start the universe. mouse-handler will be called when the mouse does something and draw-brush everytime the image shown is changed.
  (big-bang 0
    (on-mouse mouse-handler)
    (to-draw draw-brush 300 300))
  )


;Kata4: Create a rectangle that follows a mouse.
(define-example-code Summer2019/Languages/my-game-lang/main 004-art-game
  ;Rectangle follows mouse.

  ;Starting x and y position
  (define xPos 100)
  (define yPos 100)

  ;Draw a rectangle at the location set by the mouse handler
  (define (following-rectangle state)
    (place-image rect xPos yPos
                 (empty-scene 300 300)))

  ;defines the rectangle
  (define rect
    (rectangle 50 50 'solid 'red) )

  ;handles the mouse and sets xPos and yPos to its location
  (define (mouse-handler w x y me)
    (set! xPos x)
    (set! yPos y))

  ;creates world
  (big-bang 0
    (to-draw following-rectangle)
    (on-mouse mouse-handler))
  )


;Kata 5: Make a rectangle that moves with your mouse when you click and drag on it.

(define-example-code Summer2019/Languages/my-game-lang/main 005-art-game
  ;This kata builds upon kata 4 of art games

  ;Starting x and y position
  (define xPos 100)
  (define yPos 100)

  ;Rectangle width and height
  (define RECT-HEIGHT 50)
  (define RECT-WIDTH 50)

  ;Draw a rectangle at the location set by the mouse handler
  (define (following-rectangle state)
    (place-image rect xPos yPos
                 (empty-scene 300 300)))

  ;defines the rectangle
  (define rect
    (rectangle 50 50 'solid 'red) )

  ;handles the mouse and sets xPos and yPos to its location
  (define (mouse-handler w x y me)
    (cond
      [(and (mouse=? me "drag") (check-posn x y)) (set-position x y)]
      [else w]))

  ;checks if the mouse's posn is within the rectangle
  (define (check-posn x y)
    (if (and (< (abs (- x xPos)) RECT-WIDTH) (< (abs (- y yPos)) RECT-HEIGHT)) #t #f))

  ;sets the position of the rectangle
  (define (set-position x y)
    (set! xPos x)
    (set! yPos y))
  
  ;creates world
  (big-bang 0
    (to-draw following-rectangle)
    (on-mouse mouse-handler)))


;Kata6 Use your mouse to draw.
(define-example-code Summer2019/Languages/my-game-lang/main 006-art-game
  ;this defines the red circle that will be used for a brush stroke
  (define brush
    (circle 5 'solid 'red))
  ;defines the boolean that indicates whether or not this is the first time the program is drawing a circle
  (define firstTime #t)
  ;defines the list posns and includes a first item that will be replaced the first time the mouse detects movement.
  ;(The program throws errors if the list is empty so we put in a throwaway position to start with)
  (define posns (list (make-posn 10 10)))
  ;defines a list including the circles the program will draw
  (define circles (list brush))

  ;this defines the function that draws the circles. It takes a parameter that is never used because to-draw functions must always
  ;take the state as a parameter. When firstTime is true, it draws an empty box since we don't have any circles yet and don't
  ;want to draw the throwaway circle. When firstTime is false it draws all of the circles using the two previously defined lists of
  ;positions and circles and places them on an empty scene to make the "drawing"
  (define (draw-brush state)
    (if firstTime (rectangle 300 300 'outline 'black) 
        (place-images circles posns  
                      (empty-scene 300 300 "transparent" ))))

  ;This mouse-handler function runs any time a mouse movement is detected. When firstTime is true, it replaces the throwaway position
  ;with the current mouse position and sets firstTime to false. When firstTime is no longer true, it appends the new mouse position
  ;to the list of positions and adds a new red circle to the list of circles
  (define (mouse-handler w x y me)
    (if firstTime (begin(set! posns (list (make-posn x y))) (set! firstTime #f))
        (begin (set! posns (append posns (list (make-posn x y))))
               (set! circles (append circles (list brush))))))

  ;This creates the universe, calls the draw-brush function and includes the mouse-handler
  (big-bang 0
    (to-draw draw-brush 300 300)
    (on-mouse mouse-handler))
  )


;Kata 7: Have the mouse only draw when it's being pressed.
(define-example-code Summer2019/Languages/my-game-lang/main 007-art-game
  ;this defines the red circle that will be used for a brush stroke
  (define brush
    (circle 5 'solid 'red))
  ;defines the boolean that indicates whether or not this is the first time the program is drawing a circle
  (define firstTime #t)
  ;defines the list posns and includes a first item that will be replaced the first time the mouse detects movement.
  ;(The program throws errors if the list is empty so we put in a throwaway position to start with)
  (define oldPos (list (make-posn 10 10)))
  ;defines a list including the circles the program will draw
  (define circles (list brush))

  ;this defines the function that draws the circles. It takes a parameter that is never used because to-draw functions must always
  ;take the state as a parameter. When firstTime is true, it draws an empty box since we don't have any circles yet and don't
  ;want to draw the throwaway circle. When firstTime is false it draws all of the circles using the two previously defined lists of
  ;positions and circles and places them on an empty scene to make the "drawing"
  (define (draw-brush state)
    (if firstTime (rectangle 300 300 'outline 'black) 
        (place-images circles oldPos  
                      (empty-scene 300 300 "transparent" ))))

  ;This mouse-handler function runs any time a mouse movement is detected. When firstTime is true, it replaces the throwaway position
  ;with the current mouse position and sets firstTime to false. When firstTime is no longer true, it appends the new mouse position
  ;to the list of positions and adds a new red circle to the list of circles.
  ;This time, it includes an overarching if statement that only runs the rest of the code if the mouse is being dragged
  (define (mouse-handler w x y me)
    (if (mouse=? me "drag") (begin (if firstTime (begin(set! oldPos (list (make-posn x y))) (set! firstTime #f))
                                       (begin (set! oldPos (append oldPos (list (make-posn x y))))
                                              (set! circles (append circles (list brush)))))) (+ 3 2)));Find another way to do nothing besides adding numbers!!!!
  
  ;This creates the universe, calls the draw-brush function and includes the mouse-handler
  (big-bang 0
    (to-draw draw-brush 300 300)
    (on-mouse mouse-handler))
  )

;==== Number Game ===

; Kata1: Make two constants, upper and lower and set them to 100 and 1 respectively. Run them to make sure they work.

(define-example-code Summer2019/Languages/my-game-lang/main 001-number-game

  (define lower 1)

  (define upper 100)
  lower
  upper)

; Kata2: Implement four functions (three functional ones and one 'winning' function) that allow the computer to guess a number that the user picks,
;in the range of 1- 100. One should be for if the guess is higher, one for if the guess is lower, and one for generating and printing the next guess

(define-example-code Summer2019/Languages/my-game-lang/main 002-number-game

  (define lower 1)

  (define upper 100)
  lower
  upper
  ;guess picks the middle value of the two bounds, starting at 1 and 100 shown above
  (define (guess)
    (quotient (+ upper lower) 2))
  (guess)
  (define (smaller)
    (set! upper (max lower (sub1 (guess))))
    (guess))

  (define (bigger)
    (set! lower (min upper (add1 (guess))))
    (guess))

  (define (yes)
    (print"you win!"))
  (yes))

; Kata3: Add a main function that explains the rules and how to call functions to the player, initialises upper and lower, and starts the game
(define-example-code Summer2019/Languages/my-game-lang/main 003-number-game
  (define lower 1)

  (define upper 100)

  ;(guess) picks the middle value of the two bounds, starting at 1 and 100 shown above
  (define (guess)
    (quotient (+ upper lower) 2))


  ;user will call one of these to give the cpu a hint.
  (define (smaller)
    (set! upper (max lower (sub1 (guess))))
    (guess))

  (define (bigger)
    (set! lower (min upper (add1 (guess))))
    (guess))

  ;user calls this when the cpu guesses the correct number
  (define (yes)
    (print "You win!"))

  (define (main m n)
    (set! lower (min m n))
    (set! upper (max m n))
    (displayln "(smaller): Call when guess is too high.\n ")
    (displayln "(bigger): Call when guess is too low.\n ")
    (displayln "(yes): Call when guess is correct.\n ")
    (guess))

  (main lower upper))

(define-example-code Summer2019/Languages/my-game-lang/main 001-click-game
  ;create a square that spans in a random location 
  (define (random-range a b)
    (+ a (random (+ 1 (- b a)))))


  ;Starting x and y position
  (define xPos  (random-range 15 185))
  (define yPos (random-range 15 185))

  (define SQUARE-LENGTH 30)

  (define (create-red-square point)
    (place-image (square SQUARE-LENGTH "solid" "red")
                 xPos yPos
                 (empty-scene 200 200)))

  (big-bang 0
    (to-draw create-red-square)))

(define-example-code Summer2019/Languages/my-game-lang/main 002-click-game
  ;create a red square in a random location that turns white when you click on it
  ;helper function
  (define (random-range a b)
    (+ a (random (+ 1 (- b a)))))

  ;boolean to show square
  (define showSquare? #t)

  ;Starting x and y position
  (define xPos  (random-range 15 185))
  (define yPos (random-range 15 185))

  ;square side length
  (define SQUARE-LENGTH 30)



  ;(struct position (x y) #:transparent #:mutable)
  ;(define point (position (random-range 15 185) (random-range 15 185)))
  (define (draw-square vis?)
    (if vis? (square SQUARE-LENGTH "solid" "red") (square SQUARE-LENGTH "solid" "white")))

  (define (create-red-square visible?)
    (place-image (draw-square visible?)
                 xPos yPos
                 (empty-scene 200 200)))


  ; Checks mouse input
  (define (mouse-handler w x y me)
    (cond
      [(and (mouse=? me "button-down") (check-posn x y)) #f]
      [else w]))

  ;checks if the mouse's posn is within the rectangle
  (define (check-posn x y)
    (if (and (< (abs (- x xPos)) SQUARE-LENGTH) (< (abs (- y yPos)) SQUARE-LENGTH)) #t #f))





  (big-bang #t
    (to-draw create-red-square)
    (on-mouse mouse-handler)))

;==== Snake Game ===

; Kata1: Make a green square to represent the snake

(define-example-code Summer2019/Languages/my-game-lang/main 001-snake-game

  (define (create-snake time)
    (place-image (square 30 "solid" "green")
                 300 300
                 (empty-scene 600 600)))

  (big-bang 0
    (on-tick add1)
    (to-draw create-snake)))

; Kata2: Make a green square that moves automatically from left to right

(define-example-code Summer2019/Languages/my-game-lang/main 002-snake-game

  (define direction #t)

  (define (spinning-rectangle state)
    (if direction
        (place-image
         (square 30 "solid" "green")
         (modulo (* 5 state) 200)
         100
         (empty-scene 200 200))
        (place-image
         (square 30 "solid" "green")
         (- 200 (modulo (* 5 state) 200))
         100
         (empty-scene 200 200))))

  (big-bang
      0
    (on-tick add1)
    (to-draw spinning-rectangle 200 200)))

; Kata 3 Making the green snake move in all directions

(define-example-code Summer2019/Languages/my-game-lang/main 003-snake-game

  (struct posn (x y))
  (struct snake (dir posn))

  (define starter-snake
    (snake "up" (posn 300 300)))

  (define (add-posns p1 p2)
    (posn
     (+ (posn-x p1) (posn-x p2))
     (+ (posn-y p1) (posn-y p2))))

  (define (update-direction s direction)
    (define newsnake (struct-copy snake
                                  s
                                  [dir direction]))
    (move-snake newsnake))

  (define (change-dir s key)
    (cond
      [(key=? key "left") (update-direction s "left")]
      [(key=? key "right") (update-direction s "right")]
      [(key=? key "up") (update-direction s "up")]
      [(key=? key "down") (update-direction s "down")]
      [else s]))

  (define (move-snake-in-direction s p)
    (struct-copy snake s
                 [posn (add-posns p (snake-posn s))]))

  (define (move-snake s)
    (define dir (snake-dir s))
    (cond
      [(string=? dir "up") (move-snake-in-direction s (posn 0 -4))]
      [(string=? dir "down") (move-snake-in-direction s (posn 0 4))]
      [(string=? dir "left") (move-snake-in-direction s (posn -4 0))]
      [(string=? dir "right") (move-snake-in-direction s (posn 4 0))]
      [else s]))

  (define (render s)
    (define p (snake-posn s))
    (place-image (square 30 'solid 'green)
                 (posn-x p) (posn-y p)
                 (empty-scene 600 600)))

  (big-bang starter-snake
    (on-tick move-snake)
    (on-key change-dir)
    (to-draw render)))
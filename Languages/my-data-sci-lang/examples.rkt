#lang racket

(require ts-kata-util)

;==== DATA SCI Examples Requiring Plot

;Easy: Plot a discrete histogram with 3 horizontal bars.

(define-example-code Summer2019/Languages/my-data-sci-lang/main discrete-historgram-001
  (plot (discrete-histogram (list #(A 1) #(B 2) #(C 3)))))

;Medium: Plot two discrete histograms with 4 horizontal bars with varying amounts for each histogram.

(define-example-code Summer2019/Languages/my-data-sci-lang/main discrete-histogram-002
  (plot (list (discrete-histogram (list #(A 3) #(B 1.5) #(C 2) #(D 2)))
              (discrete-histogram (list #(E 4) #(F 1) #(G 2))
                                  #:x-min 8
                                  #:color 2 #:line-color 2))))

;Hard: Plot two discrete histograms with 4 horizontal bars with varying amounts and labels for each histogram.

(define-example-code Summer2019/Languages/my-data-sci-lang/main discrete-histogram-003
  (plot (list (discrete-histogram (list #(A 3) #(B 1.5) #(C 2) #(D 2))
                                  #:label "Numbers per letter")
              (discrete-histogram (list #(E 4) #(F 1) #(G 2))
                                  #:x-min 8
                                  #:label "Numbers per letter"
                                  #:color 2 #:line-color 2))))

;Easy: Plot an exponential graph.

(define-example-code Summer2019/Languages/my-data-sci-lang/main expontential-graph-001
  (plot (function sqr -2 1)))

;Medium: Plot a dotted exponential graph.

(define-example-code Summer2019/Languages/my-data-sci-lang/main expontential-graph-002
  (plot (function sqr -2 2
           #:style 'dot)))

;Hard: Plot two exponential graphs with proper labels and differing styles on the same plane.

(define-example-code Summer2019/Languages/my-data-sci-lang/main expontential-graph-003
  (plot (list (axes)
           (function sqr -2 2
           #:color 2))))

;Hard: Plot two graphs (y = sin(x) and y = cos(x) ) with proper labels and with a domain between -pi and pi on the same plane.

(define-example-code Summer2019/Languages/my-data-sci-lang/main expontential-graph-004
 (plot (list (axes)
             (function (lambda (x) (cos x))(- pi) pi #:label "y=cos(x)")
             (function (lambda (x) (sin x)) #:label "y=sin(x)" #:color 2))))

;======
(define-example-code Summer2019/Languages/my-data-sci-lang/main superset-lang-demo
  (hello-world))

(define-example-code racket 
                     easy-addition-001
  (+ 2 2))

(define-example-code racket 
                     medium-addition-001
  (+ 2 2 2 (+ 2 2)))

(define-example-code racket 
                     hard-addition-001

  (+ 2 2 2 (+ 2 2) (+ 2 2 2)))

(define-example-code data-sci grpa-easy-map-001
  (map sub1 (range 10)))

(define-example-code data-sci grpa-easy-map-002
  (map rectangle (range 10)(range 10)))

(define-example-code data-sci grpa-easy-map-003
  (map circle (shuffle (range 10 100 10))))

(define-example-code data-sci grpa-easy-map-004
  (map (negate =) (list 1 2 1) (list 1 2 3)))

(define-example-code data-sci grpa-easy-map-005
  (map string-append (list "Hi" "Apple ")(list " there" "Banana")))


;========== EASY APPLY

(define-example-code data-sci grpa-easy-apply-001
  (apply + (range 10)))

(define-example-code data-sci grpa-easy-apply-002
  (apply gcd (map sub1 (range -10 11 2))))

(define-example-code data-sci grpa-easy-apply-003
  (apply hc-append (map jack-o-lantern (range 20))))

(define-example-code data-sci grpa-easy-apply-004
  (apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40))))


;========== EASY CURRY

(define-example-code data-sci grpa-easy-curry-001
  (map (curry cloud 100)(range 20)))

(define-example-code data-sci grpa-easy-curry-002
  (map (curry angel-wing 100 100) (list #t #f)))

(define-example-code data-sci grpa-easy-curry-003
  (apply cc-superimpose
         (map (curry rotate (ellipse 40 80))(range 0 120 10))))


;========== EASY COMPOSE

(define-example-code data-sci grpa-easy-compose-001
  (apply cc-superimpose (map (compose circle sqr) (range 20))))

; ============ GROUP B ================
;Add all odd numbers from 0 to 100
(define-example-code data-sci katas-b-numbers-001
 (apply +
 (map (curry + -1)
 (map (curry * 2)(range 1 51))))
  )

;Multiply the sums of 1-10 and 11-20
(define-example-code data-sci katas-b-numbers-002
 (*(apply +
 (range 1 11))
 (apply +
 (range 11 21)))
  )

;Create several jack-o-lanterns of different sizes.
(define-example-code data-sci katas-b-change-size-001
 (apply hbl-append
 (map jack-o-lantern (range 25 30)))
  )

;Create a row of different colored file icons increasing in size.
(define-example-code data-sci katas-b-change-size-002
 (apply hbl-append
 (map file-icon (map (curry * 10) (range 5))
 (map (curry * 10) (range 5))
 (list "gray" "orange" "red" "green" "blue")))
  )

;Make a vertical line of 6 circles with radius 50 that are the colors of the rainbow
(define-example-code data-sci katas-b-colors-rotation-superimpose-001
 (define (rainbow x)
 (map (lambda (color)
 (colorize x color))
 (list "red" "orange" "yellow" "green" "blue" "purple")))
 (apply vc-append(rainbow (circle 50)))
  )

;Print out a vertical list of rotated purple squares with width 30.
(define-example-code data-sci katas-b-colors-rotation-superimpose-002
 (define nums (range 0 10))
 (define (rotateSquare n)
 (rotate (colorize (filled-rectangle 30 30)
 "purple") n))
 (apply vc-append (map rotateSquare nums))
  )

;Create 4 circles and superimpose 7 rotated rectangles within the smallest circle
(define-example-code data-sci katas-b-colors-rotation-superimpose-003
 (apply cc-superimpose
 (append
 (map (compose circle sqr) (range 10 15))
 (map (curry rotate (rectangle 100 100)) (range 7))))
  )

;Superimpose 100 rectangles on eachother and rotate each consecutive rectangle by 1 degree.
(define-example-code data-sci katas-b-colors-rotation-superimpose-004
 (apply cc-superimpose
 (map
 (curry rotate(rectangle 100 200)) (range 100)))
  )

;Defines a function that prints out a jack-o-lantern if the input
;is a standard-fish with width 100 and length 50. Otherwise, add 1 to each number in the
;list (1 2 3).
(define-example-code data-sci katas-b-more-picts-001

 (define nice-fish (standard-fish 100 50))
 (define (func x)
   
 (if (equal? x nice-fish)
 (jack-o-lantern 100)
 (map add1 (list 1 2 3))))

 (func nice-fish)
  )

;Make a list of ellipses that alternate colors of the rainbow
(define-example-code data-sci katas-b-more-picts-002
 (define (colors x)
 (map (lambda (color)
 (colorize x color))
 (list "red" "orange" "yellow" "green" "blue" "purple")))
 (colors (circle 50))
  )

;Create a list of alternating colors.
(define-example-code data-sci katas-b-alternating-list-001
 (define nums (range 20))
 (define bools (map even? nums))
 (define (bools->color b)
 (if b "salmon" "midnight blue"))
 (define colors
 (map
 bools->color
 bools))
 colors
  )

;Create a list of fish with alternating colors.
(define-example-code data-sci katas-b-alternating-list-002
 (define (make-color b)
 (if b "blue" "purple"))

 (define (make-fish c)
 (standard-fish 50 50 #:color c))

 (map (compose make-fish make-color even?) (range 15))
  )
  
  
; ============ GROUP C ================

; Start with a list from 1 to 3, add 4 to each number, multiply each number by 2, multiply all the numbers together, and finally, subtract 1.
(define-example-code data-sci grpC-nums-01
  (define (add4 x) (+ x 4))
  (define (multiply2 x) (* x 2))
  (sub1 (apply * (map multiply2 (map add4 (list 1 2 3)))))
  )
; Append and remove numbers from a list
(define-example-code data-sci grpC-nums-02
  (define (g x) (append (list x) (list 3 4)))
  (define (removeC x) (remove 3 x))
  (map removeC (map g (list 1 2)))
  )
; Use a lambda function to group a two lists by their remainder when divided by 2. The two lists are created by each adding one to a list from
;1 to 3, then one subtracting all the numbers and the other adding them all.
(define-example-code data-sci grpC-nums-03
  (group-by (lambda (x) (modulo x 2))
            (list (apply + (map add1 (list 1 2 3)))(apply - (map add1 (list 1 2 3)))))
  )
;Use an if statement to print a range of jack-o-lanterns if the function is called with a certain parameter, and a disk otherwise.
(define-example-code data-sci grpC-bpics-01
  (define printPumpkin (range 2))
 
  (define (func x)
    (if (equal? x printPumpkin)
        (map jack-o-lantern (range 90 110 5))
        (map disk (range 30 50 5))))
 
  (func printPumpkin)
  (func circle)
  )
; Shuffle the order of horizontally appended pictures
(define-example-code data-sci grpC-bpics-02
  (apply hc-append (shuffle (list (desktop-machine 1)
                                  (cloud 100 75)
                                  (standard-fish 100 50)
                                  (jack-o-lantern 100)
                                  (thermometer)
                                  (standard-fish 100 50 #:open-mouth #t #:color "olive"))))
  )
;Create 10 clouds that alternate between two colors. Vertically append them.
(define-example-code data-sci grpC-bpics-03
  (define nums (range 10))
 
  (define bools (map even? nums))
  (define (toColor b)
    (if b "lavenderblush" "red"))
 
  (define colors
    (map toColor bools))
 
  (apply vc-append (map cloud (range 90 100) (range 90 100) colors))
  )
;Make 4 thermometers grow in size and rotate every other thermometer by pi radians.
(define-example-code data-sci grpC-ori-01
  (define nums (map (curry * pi) (range 4)))
  (define (thermo n r)
    (rotate (thermometer #:stem-height n
                         #:bottom-circle-diameter 40
                         #:top-circle-diameter 20
                         #:mercury-inset 4) r))
 
  (apply hc-append (map thermo (range 40 120 20) nums))
  )
; Create 10 standard fish, and alternate their direction.
(define-example-code data-sci grpC-ori-02
  (define nums (range 0 10))
  (define bools (map even? nums))
  (define (flip b)
    (if b 'right 'left))
  (define direction (map flip bools))
 
  (define (fish s)
    (standard-fish 100 50 #:direction s #:open-mouth #t #:color "salmon"))
 
  (apply hc-append (map fish direction))
  )
;Make a column of 10 slighly rotated squares and a column of slighly rotated arrows and horizonally append them.
(define-example-code data-sci grpC-ori-03
  (define nums (range 0 10))
  (define (rotateSquare n)
    (rotate (colorize (filled-rectangle 30 30)
                      "purple") n))
  (define (rotateArrow x)
    (rotate (arrow 30 (/ pi 2)) x))
  (apply hc-append (list (apply vc-append (map rotateSquare nums)) (apply vc-append (map rotateArrow nums))))
  )

;Make 20 angel wings and alternate their direction and color.
(define-example-code data-sci grpC-ori-04
  (define nums (range 20))
  (define bools (map even? nums))
  (define (bools->color b)
    (if b "salmon" "midnight blue"))
  (define colors
    (map
     bools->color
     bools))
  (define (make c b)
    (curry colorize (angel-wing 20 30 b) c))
  (apply hc-append (map make colors bools))
  )



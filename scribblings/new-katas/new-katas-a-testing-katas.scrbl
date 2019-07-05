#lang racket
(require pict)

(map sub1 (range 10))

;(map max (range -5 5))

(apply gcd (map sub1 (range -10 11 2)))

(map circle (range 10))

;edited
(map rectangle (range 10 20 2)(range 20 30 2))

;edited
(map string-append (list "Apple" "Banana" "Orange" "Grape" "Pear")
     (list "Oreos" "Pie" "Cake" "Ice Cream" "Crepe"))

(apply + (range 10))

(apply cc-superimpose
   (map circle (range 10)))

;not to be included
(apply cc-superimpose
       (map
        (curry rotate (rectangle 300 100)) (range 100)
        )
       )

;we like this
(apply cc-superimpose
 (map
  (curry rotate (ellipse 300 100)) (range 100)
  )
)

(apply +
(map sqrt (range 10 )))

(apply cc-superimpose (map circle (range 10 100 20)))

(apply hc-append (map jack-o-lantern (range 20)))

(apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))

(apply hc-append (shuffle (map desktop-machine (range 5))))

(map (curry rotate (ellipse 40 80))(range 0 120 10))

(apply cc-superimpose
       (map (curry rotate (ellipse 40 80))(range 0 120 10)))

(map sub1 (range 100))

(map (curry cloud 100)(range 20))

(apply cc-superimpose (map (compose circle sqr) (range 20)))

(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))

(map shuffle (list (list "c" "o" "d" "e")))

(map (curry angel-wing 100 100) (list #t #f))

(map sub1 (list (count even? (list 1 2 3 4 5))))

(map circle (shuffle (range 10 100 10)))

;(apply cc-superimpose(list (face* 'worried 'large #f default-face-color 6)(cloud 125 25 "red")))

(map (negate =) (list 1 2 1) (list 1 2 3))

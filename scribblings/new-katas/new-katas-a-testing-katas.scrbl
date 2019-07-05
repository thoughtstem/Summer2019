#lang racket
(require pict)
;Alex and Sam

;numbers example 1 map
(map sub1 (range 10))

;map, number manipulation, unique breakfast mmm
#|Alex wants to make sure that they won't make the same breakfast as yesterday.
 Create code using map that makes two lists⁠— one of yesterday's breakfast, and one of today's⁠—
 and finds if the food will be the same or different.|#
(map string=? (list "pancakes" "cereal" "OJ") (list "pancakes" "donuts" "egg"))

;shapes example 1 map
(map circle (range 10))

;map, strings, dont totally understand
#|Sam would like to make scrambled eggs for their parents, but doesn't know how to crack an egg.
 Instead, they decide to write out the word "eggs" with the letters scrambled.
 Create code that would help Sam make "scrambled eggs".
|#
(map shuffle (list (list "e" "g" "g" "s")))

;edited, shapes example 2 map
#|Alex is searching their cabinet for a loaf of bread to make toast with. Alex
 finds five loaves of bread, each increasing in size. Surprised, Alex wants to make
 a drawing of all five loaves of bread. Write code that creates five rectangles,
 each increasing in size.
|#
(map rectangle (range 10 20 2)(range 20 30 2))

;edited, strings example 3 map
#|Sam and Alex want to create a menu for their parents. Write code that would
 help Sam and Alex create a menu that consists of 10 items arranged on
 five lines.
|#
(map string-append (list "Apple" "Banana" "Orange" "Grape" "Pear")
     (list " Oreos" " Pie" " Cake" " Ice Cream" " Crepes"))

;numbers example 1 apply
(apply + (range 10))

;shapes map and apply
(apply cc-superimpose
   (map circle (range 10)))

;shapes, map and apply
#|Alex and Sam want to order donuts for their parents. After the donuts arrive,
they decide to create a drawing of their favorite donut made out of ellipses.
Help Alex and Sam by creating code that uses apply, map, and curry to create a donut
made out of 50 ellipses that all have 40 width and 120 height.
|#
(apply cc-superimpose
 (map
  (curry rotate (ellipse 40 120)) (range 50)
  )
)

;numbers map and apply
(apply +
(map sqr (range 5)))

;shapes map and apply
(apply hc-append (map jack-o-lantern (range 20)))

;shapes map and apply, sunny-side up
#|Alex would like to make a sunny-side up egg. This looks like two ellipses; one with
width 20 and height 40, the other with width 40 and height 80. These numbers can be changed
to be more egg-like.
|#
(apply cc-superimpose
       (map ellipse (list 20 60) (list 40 80)))


;curry shapes ex 1
(map (curry cloud 100)(range 20))

;apply, shapes, failed egg example
#|Alex tried to make a fried egg for their parents, but ended up
 spilling and making a mess both inside and outside of the pan.
 Create code that models Alex's failed fried egg. It would look like a circle at the center
of an orange cloud. The cloud's height and width are 175 and the circle's diameter is 100.
|#
(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))

;map, shapes, curry
(map (curry angel-wing 100 100) (list #t #f))

;map, shapes, pancake equality
#|Sam is determined to make pancakes for their parents, but finds it hard
to make them all the same size. Create code to model Sam's pancakes if they made
9 in total and none of them are the same size.
|#
(map circle (shuffle (range 10 100 10)))




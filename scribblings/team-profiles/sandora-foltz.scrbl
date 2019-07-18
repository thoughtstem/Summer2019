#lang scribble/manual
@(require "common.rkt"
          2htdp/image)

@(bio "Sandora Foltz"
      "sandora.jpg"
      "People think that life is easy peasy lemon squeezy but it's actually difficult difficult lemon difficult."
      )


@(define (extremities)
  (make-pen "green" 6 "solid" "round" "round"))

@(define (horns)
  (isosceles-triangle 20 30 'solid "white"))

@(define body
   (overlay/offset
     (ellipse 85 20 'solid "black")
     0 -30
     (overlay/offset
      (ellipse 85 30 'solid "red")
      0 -30
      (add-curve
       (add-curve
        (overlay/offset
         (circle 10 'solid "black")
         0 25
         (overlay/offset
          (circle 30 'solid "white")
          0 25
          (overlay
           (circle 75 'solid "green")
           (rectangle 300 400 'solid "blue"))
          )
         )

        100 20 0 1/3
        100 200 0 2/3 (extremities))
       200 200 0 2/3
       200 20 0 1/3 (extremities))
      )
     ))

@(overlay/offset
 (text "Mike" 50 "indigo")
 0 -170
(overlay/offset
 (line 0 90 (extremities  ))
 30 -100
 (overlay/offset
  (line 0 90 (extremities))
  -30 -100
  (overlay/offset
   (horns)
   20 75
   (overlay/offset
    (horns)
    -20 75
    body
    )
   )
  )
 )
)

@codeblock{
  (define (extremities)
  (make-pen "green" 6 "solid" "round" "round"))

(define (horns)
  (isosceles-triangle 20 30 'solid "white"))
(define body
(overlay/offset
     (ellipse 85 20 'solid "black")
     0 -30
     (overlay/offset
      (ellipse 85 30 'solid "red")
      0 -30
      (add-curve
       (add-curve
        (overlay/offset
         (circle 10 'solid "black")
         0 25
         (overlay/offset
          (circle 30 'solid "white")
          0 25
          (overlay
           (circle 75 'solid "green")
           (rectangle 300 400 'solid "blue"))))

        100 20 0 1/3
        100 200 0 2/3 (extremities))
       200 200 0 2/3
       200 20 0 1/3 (extremities))
      )))

(overlay/offset
 (text "Mike" 50 "indigo")
 0 -170
(overlay/offset
 (line 0 90 (extremities  ))
 30 -100
 (overlay/offset
  (line 0 90 (extremities))
  -30 -100
  (overlay/offset
   (horns)
   20 75
   (overlay/offset
    (horns)
    -20 75
    body)))))

}


@blog{

@blog-post["Personal Philosophy"]{"Stay hydrated!"}
@blog-post["Day 16"]{We are git-tin' it on with pushing and pulling. Made a blog. Stay tuned.}
@blog-post["Day 17"]{We made dummy changes and reverted them. This is gitting to my head.}
@blog-post["Day 18"]{We made data-sci katas, here they are!}
@codeblock{Using the curve function, make a straight line that runs diagonally through a  100 by 100 solid black rectangle:
 (add-curve
 (rectangle 100 100 "solid" "black")
 0 0 315 1/2
 100 100 315 1/2
 "white")}
@(add-curve
 (rectangle 100 100 "solid" "black")
 0 0 315 1/2
 100 100 315 1/2
 "white")
@codeblock{Create a curve inside of a 100 by 100 solid black rectangle and makes a shape similar to a Z:
 (add-curve
 (rectangle 100 100 "solid" "black")
 10 10 0 2
 90 90 0 2
 "white")
 }
@(add-curve
 (rectangle 100 100 "solid" "black")
 10 10 0 2
 90 90 0 2
 "white")
@codeblock{Create a symmetrical infinity symbol using two curves:
(add-curve
 (add-curve (rectangle 100 100 "solid" "black")
            0 50 90 1/3
            100 50 90 1/3 "white")
 0 50 -90 1/3
 100 50 -90 1/3 "white")
 }
@(add-curve
 (add-curve (rectangle 100 100 "solid" "black")
            0 50 90 1/3
            100 50 90 1/3 "white")
 0 50 -90 1/3
 100 50 -90 1/3 "white")
@blog-post["Day 21"]{First day of second project week; helped start blogs and create stuff with 2htdp.}
@blog-post["Day 22"]{Tested my peers with 3 kata challenges: giving them different 2htdp-generated pictures that they had to look at and recreate in under a minute.}
@blog-post["Day 23"]{Worked on animations/moving images in the 2htdp/universe library.}
}
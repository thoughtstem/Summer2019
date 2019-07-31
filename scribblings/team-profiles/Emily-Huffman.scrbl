#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)
          
@(bio "Emily Huffman"
      "emily-huffman.jpg"
      "Hi! I'm Emily and I am a 3rd year Applied Mathematics in Geophysics student at UC Berkeley")



@blog-post["What's on my mind?"]{
                                 It's better to burn out than to fade away.
                                 }

@blog-post["Day 16"]{
                     I learned how to make this blog! (This is really day 1 for me).
                     }

@blog-post["Day 17"]{
                     We worked in partners to become more familiar with scribble and learn how to code shapes, which essentially created images. My partner, Maya, and I created a watermelon!
                     }


@(define seeds
  (overlay/offset(circle 3 'solid "black")
                 30 0
                 (circle 3 'solid "black")))
@(overlay/offset seeds -1 -25
                (overlay/offset
                 (overlay/offset
                  (overlay/offset (circle 3 'solid "black")
                                                             0 -40
                                                             (rectangle 80 60 'solid "white"))
                                              0 30
                                              (ellipse 70 50 'solid "red"))
                               0 20
                               (ellipse 80 60 'solid "green")))


@codeblock{
(define seeds
  (overlay/offset(circle 3 'solid "black")
                 30 0
                 (circle 3 'solid "black")))
(overlay/offset seeds -1 -25
                (overlay/offset
                 (overlay/offset
                  (overlay/offset (circle 3 'solid "black")
                                                             0 -40
                                                             (rectangle 80 60 'solid "white"))
                                              0 30
                                              (ellipse 70 50 'solid "red"))
                               0 20
                               (ellipse 80 60 'solid "green")))}

@blog-post["Day 18"]{Easy: Construct 3 solid circles, one blue, one red, and one yellow, all with a radius of 10.}
@(beside (circle 10 'solid "red")
        (circle 10 'solid "blue")
        (circle 10 'solid "yellow")
        )
@codeblock{
(beside (circle 10 'solid "red")
        (circle 10 'solid "blue")
        (circle 10 'solid "yellow"))}

@blog-post{Medium: Create a function with multiple rectangles that spell HI by first contructing an H and then using the rotate function.}

@(beside (rectangle 5 30 'solid "lightseagreen")
        (rectangle 15 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 10 30 'solid "white")
        (rotate 90
          (beside
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 20 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen"))
        ))

@codeblock{(beside (rectangle 5 30 'solid "lightseagreen")
        (rectangle 15 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 10 30 'solid "white")
        (rotate 90
          (beside
        (rectangle 5 30 'solid "lightseagreen")
        (rectangle 20 5'solid "lightseagreen")
        (rectangle 5 30 'solid "lightseagreen"))))}

@blog-post{Hard: Define a function which aligns 3 stars beside each other and accepts color as an input. Use this to construct a framed image calling the function 3 times, each with a different color and scale.}

@(define (star color)

(beside/align "top"
        (star-polygon 5 10 3 'solid color)
        (star-polygon 10 10 3 'solid color)
        (star-polygon 20 10 3 'solid color)
        ))
@(frame (beside/align "bottom" (star "cornflowerblue") (scale 2 (star "midnight blue")) (star "cyan")
                     ))
@codeblock{
(define (star color)

(beside/align "top"
        (star-polygon 5 10 3 'solid color)
        (star-polygon 10 10 3 'solid color)
        (star-polygon 20 10 3 'solid color)))

(frame (beside/align "bottom" (star "cornflowerblue") (scale 2 (star "midnight blue")) (star "cyan")))}

@blog-post["Day 19"]{
                     For the last day of the project week, Jason taught us how to create a "video game" (what the kids code during camp), such as mario. By the end of session, we became familiar enough with the code to program our own game.}

@blog-post["Day 20"]{
                     I started my second project week. Today we mainly focused on mock interview programming questions. Steven presented a problem on the board and challenged us to solve it any language we chose, while conducting each challenge as an "interview".}
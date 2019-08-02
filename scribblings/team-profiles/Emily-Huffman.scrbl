#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)
          
@(bio "Emily Huffman"
      "emily-huffman.jpg"
      "Hi! I'm Emily and I am a 3rd year Applied Mathematics in Geophysics student at UC Berkeley.
I plan on minoring in computer science.")



@blog-post["Personal Thoughts"]{
 It's better to burn out than to fade away.
}

@blog-post["Project Week 1, Day 16"]{
 I learned how to make this blog and become more familiar with github.
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
                     First, we became familiar with functions such as map, apply, curry, lambda, and compose.
 Then, we used our acquired knowledge in order to organize and revamp the previously created katas pertaining to each function.}

@blog-post["Day 20"]{
 For the last day of the project week, Jason taught us how to create a "video game" (what the kids code during camp), such as mario.
 By the end of the session, we became familiar enough with the game engine to be able to customize and create our own avatars and enemies.}

@blog-post["Project Week 2, Day 21"]{
 I started my second project week. Today, we mainly focused on mock interview programming questions.
 Steven presented a problem on the board and challenged us to solve it any language we chose, while conducting each challenge as an "interview".}

@blog-post["Day 21"]{
 Wrote another set of kata examples except this time, we focused on those which incorporated web developer.
 By meshing HTML and CSS, I was able to customize the background with color and image of the articulated blog.}

@blog-post["Day 23"]{
 For the last day of the week, I ran into some complications in developing the last kata, specifically in animation.
 In writing code to create a blog for the web developer portion of the katas, we are combining HTML with CSS.
 The problem I encountered in adding animation primarily consisted of combining the two languages, while upholding racket syntax.
 Hopefully, I'll be able to solve this issue by the end of the day.

For the first half of the day, Steven is allowing us to ask any sort of questions regarding this particular industry we are all keen to enter.}
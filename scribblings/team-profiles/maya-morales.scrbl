#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@(bio "Maya Morales" 
      "mayapic.jpg"
      "Hi my name is Maya. I am currently in my 2nd year at Smith College.")

@blog{
      
@blog-post["Personal Thoughts"]{
  I am currently thinking on it. Like right now.
}

@blog-post["Day 1"]{
  Today I learned about DCog and how it happens all the time. I didnt even realize I was doing it until today.
}

 @blog-post["Day 2"]{
Recognition vs Recal vs Fluency
This was also a brand new topic for me, something I had never thought of.
}

 @blog-post["Day 3"]{
Refactoring, Broca's Region and fMRI studies.
I had never thought of a coding language being related to the English language or any language for that matter. But I can see the simularities now.
}
 @blog-post["Day 16"]{
  Today I started my second project week. I made a watermelon!
}
 @blog-post["Day 17"]{
  Here is my watermelon!!


@(overlay/offset (overlay/offset(circle 3 'solid "black")
                 30 0
                 (circle 3 'solid "black")) -1 -25
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
                               (ellipse 80 60 'solid "green")))} }
@blog-post["Day 18"]{
I assisted in making katas for 2htdp. I think it went well, now you can learn stuff:)
                     
   @bold{EASY} - Overlay a red circle centered on top of a white rectangle (Use the Japanese flag as reference)

   HINT - The syntax for (overlay) is @verbatim{(overlay (shape on bottom) (shape on top))}

  @(overlay (circle 20 'solid "red") (rectangle  130 80 'solid "snow"))
@codeblock{(overlay (circle 20 'solid "red") (rectangle  130 80 'solid "white"))}

@bold{MEDIUM} - Overlay 5 circles that get smaller and less transparent.

HINT - change @bold{'solid} to a number between 0 and 255 to change the transparency of the circle.

@(overlay (circle 50 50 "Midnightblue")
         (circle 40 100 "Midnightblue")
         (circle 30 150 "Midnightblue")
         (circle 20 200 "Midnightblue")
         (circle 10 250 "Midnightblue"))
@codeblock{(overlay (circle 50 50 "Midnightblue")
         (circle 40 100 "Midnightblue")
         (circle 30 150 "Midnightblue")
         (circle 20 200 "Midnightblue")
         (circle 10 250 "Midnightblue"))}

@bold{HARD} - Use multiple overlay/offset functions to make a house with an isosceles triangle as a roof, a rectangle as the front of the house, two squares as the windows, and a vertical rectangle as a door

HINT - use a seperate @literal{(overlay/offset)} function for each shape, and nest them to create the house.

  - the syntax for (overlay/offset) is @verbatim{(overlay/offset (shape on top) x-offset y-offset (shape on bottom))}

@(overlay/offset (isosceles-triangle 60 120 "solid" "saddlebrown") 0 55
                (overlay/offset (square 25 'solid "snow") 20 20
                                (overlay/offset (square 25 'solid "snow") -20 20
                                                (overlay/offset (rectangle 20 35 'solid "lime") 0 -22
                                                                (rectangle 100 80 'solid "deepskyblue")))))
@codeblock{(overlay/offset (isosceles-triangle 60 120 "solid" "saddlebrown") 0 55
                (overlay/offset (square 25 'solid "snow") 20 20
                                (overlay/offset (square 25 'solid "snow") -20 20
                                                (overlay/offset (rectangle 20 35 'solid "lime") 0 -22
                                                                (rectangle 100 80 'solid "deepskyblue")))))}

@bold{CHALLENGE} - Overlay four concentric radial-stars. Each one should be a little smaller than the one above it.

@(overlay (radial-star 32 40 50 "outline" "black")
(radial-star 32 30 40 "outline" "black")
(radial-star 32 20 30 "outline" "black")
(radial-star 32 10 20 "outline" "black"))
@codeblock{(overlay (radial-star 32 40 50 "outline" "black")
(radial-star 32 30 40 "outline" "black")
(radial-star 32 20 30 "outline" "black")
(radial-star 32 10 20 "outline" "black"))}
}
 @blog-post["Day 19"]{
  Today we went over data structures and different types of interview questions you might have when trying to apply for a coding job/internship. I also started messing with vr-lang, it went ok.
}
 @blog-post["Day 20"]{
  Today we continued with interview questions which are hard and then proceeded with vr-lang.
}}
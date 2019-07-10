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
  We worked on making 2htdp/image katas.

   EASY - Overlay a yellow star centered on top of a red rectangle (Use the Vietnam flag as reference)

  @(overlay (star 30 'solid "yellow") (rectangle  130 80 'solid "red"))
@codeblock{(overlay (star 30 'solid "yellow") (rectangle  130 80 'solid "red"))}

MEDIUM - Overlay 5 pulled regular rectangles that get smaller and less transparent

@(overlay (pulled-regular-polygon 50 5 1/2 -10 50 "Midnightblue")
         (pulled-regular-polygon 40 5 1/2 -10 100 "Midnightblue")
         (pulled-regular-polygon 30 5 1/2 -10 150 "Midnightblue")
         (pulled-regular-polygon 20 5 1/2 -10 200 "Midnightblue")
         (pulled-regular-polygon 10 5 1/2 -10 250 "Midnightblue"))
@codeblock{(overlay (pulled-regular-polygon 50 5 1/2 -10 50 "Midnightblue")
         (pulled-regular-polygon 40 5 1/2 -10 100 "Midnightblue")
         (pulled-regular-polygon 30 5 1/2 -10 150 "Midnightblue")
         (pulled-regular-polygon 20 5 1/2 -10 200 "Midnightblue")
         (pulled-regular-polygon 10 5 1/2 -10 250 "Midnightblue"))}

HARD - Use overlay/offset to make a house with an isosceles triangle as a roof, a rectangle as the front of the house, two squares as the windows, and a vertical rectangle as a door

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

CHALLENGE - Overlay four concentric radial-stars. Each one should be a little smaller than the one above it.

@(overlay (radial-star 32 40 50 "outline" "black")
(radial-star 32 30 40 "outline" "black")
(radial-star 32 20 30 "outline" "black")
(radial-star 32 10 20 "outline" "black"))
@codeblock{(overlay (radial-star 32 40 50 "outline" "black")
(radial-star 32 30 40 "outline" "black")
(radial-star 32 20 30 "outline" "black")
(radial-star 32 10 20 "outline" "black"))}
}}
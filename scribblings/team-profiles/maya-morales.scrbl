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
}
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
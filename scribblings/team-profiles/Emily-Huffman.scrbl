#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)
          
@(bio "Emily Huffman"
      "emily-huffman.jpg"
      "Hi! I'm Emily and I am a 3rd year Applied Mathematics in Geophysics student at UC Berkeley")

@blog{

@blog-post["What's on my mind?"]{
                                 It's better to burn out than to fade away.
                                 }

@blog-post["Day 16"]{
                     I made this blog! (This is really day 1 for me).
                     }

@blog-post["Day 17"]{
                     I made a watermelon! Tah Dah!
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
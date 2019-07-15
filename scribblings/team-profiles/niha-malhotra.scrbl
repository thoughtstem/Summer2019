#lang scribble/manual

@(require "./common.rkt"
           (prefix-in tactics: ts-tactics)
           2htdp/image) 


@(bio "Niha Malhotra" 
      "niha-malhotra.jpg"
      "I want to go to UCSD with a major in computer science. I am enrolled in an extension course in Java. I go to Scripps Ranch High School.")

@blog{

@blog-post["Day 1"]{ }
 @codeblock{
(define eye
  (overlay   (circle 5 "solid" "black")
             (circle 10 "solid" "blue")
             (circle 20 "solid" "white")))
(define legs (beside
    (rectangle 10 40 "solid" "yellow")
    (rectangle 30 30 "solid" "white")
    (rectangle 10 40 "solid" "yellow")))

(define smile (add-curve (rectangle 50 20 'solid 'yellow) 0 10 -90 .5
                         50 10 90 .5 'black))
(define arm (add-curve (rectangle 50 140 'solid  'white)
                        50 60 180 .5
                        25 140 -90 .5 (make-pen 'yellow 5 'solid 'round 'round)))
(beside
 arm 
(overlay/offset
smile 0 15
(overlay/offset
 eye 20 50
 (overlay/offset
  eye -20 50
  (above
   (rectangle 100 100  "solid"  "yellow")
   (rectangle 100 40 "solid" "brown")
   legs))))
(flip-horizontal arm))

}
}
@(define eye
  (overlay   (circle 5 "solid" "black")
             (circle 10 "solid" "blue")
             (circle 20 "solid" "white")))
@(define legs (beside
    (rectangle 10 40 "solid" "yellow")
    (rectangle 30 30 "solid" "white")
    (rectangle 10 40 "solid" "yellow")))

@(define smile (add-curve (rectangle 50 20 'solid 'yellow) 0 10 -90 .5
                         50 10 90 .5 'black))
@(define arm (add-curve (rectangle 50 140 'solid  'white)
                        50 60 180 .5
                        25 140 -90 .5 (make-pen 'yellow 5 'solid 'round 'round)))
@(beside
 arm 
(overlay/offset
smile 0 15
(overlay/offset
 eye 20 50
 (overlay/offset
  eye -20 50
  (above
   (rectangle 100 100  "solid"  "yellow")
   (rectangle 100 40 "solid" "brown")
   legs))))
(flip-horizontal arm))
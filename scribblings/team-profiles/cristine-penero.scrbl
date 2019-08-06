#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@(bio "Cristine Penero" 
      "cristine.jpg"
      "I am a junior in college majoring in Computer Science and Engineering."
      )
      
@blog{


@blog-post["Personal Philosophy"]{
       Life is like coding. You run it; and if there's any problem, you fix it and recompile it again until you get it right.
 }

@blog-post["July 1 - July 5"]{
Camp Week at SDSU
                              }

@blog-post["Day 16"]{
       We learned how to use Github and were introduced to 2htdp.

This code creates a simple image of a house.

@(above 
 (isosceles-triangle 60 120 "solid" "aquamarine")

 (overlay/offset (square 25 'solid "blue") 20 20
                 (overlay/offset (square 25 'solid "blue") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "black") 0 -20
                                                 (rectangle 100 80 'solid "red")))))
 @codeblock{
#lang racket
(require 2htdp/image)
(above 
 (isosceles-triangle 60 120 "solid" "aquamarine")

 (overlay/offset (square 25 'solid "blue") 20 20
                 (overlay/offset (square 25 'solid "blue") -20 20
                                 (overlay/offset (rectangle 20 35 'solid "black") 0 -20
                                                 (rectangle 100 80 'solid "red")))))

}

This code creates an image of a teddy bear.

@(overlay/offset
 (overlay/offset (ellipse 30 10 'solid "pink") 0 -25
                 (overlay/offset (circle 5 'solid "black") -20 0
                                 (overlay/offset (circle 5 'solid "black") 20 0
                                                 (overlay/offset (circle 15 'solid "black") -40 40
                                                                 (overlay/offset (circle 15 'solid "black") 40 40
                                                                                 (ellipse 100 90 "solid" "brown"))))))
 0 100
 (overlay/offset (circle 4 'solid "brown") -10 -20
                 (overlay/offset (beside (rotate 270 (triangle 30 "solid" "lightcoral"))(rotate 90 (triangle 30 "solid" "lightcoral"))) -10 30
                                 (underlay/offset (circle 20 'solid "brown") 20 -70
                                                  (underlay/offset (circle 20 'solid "brown") -50 -70
                                                                   (underlay/offset
                                                                    (ellipse 50 20 'solid "brown") -80 10
                                                                    (underlay/offset
                                                                     (ellipse 50 20 'solid "brown") 80 10 
                                                                     (ellipse 120 150 'solid "red"))))))))
@codeblock{
#lang racket
(require 2htdp/image)
  (overlay/offset
 (overlay/offset (ellipse 30 10 'solid "pink") 0 -25
                 (overlay/offset (circle 5 'solid "black") -20 0
                                 (overlay/offset (circle 5 'solid "black") 20 0
                                                 (overlay/offset (circle 15 'solid "black") -40 40
                                                                 (overlay/offset (circle 15 'solid "black") 40 40
                                                                                 (ellipse 100 90 "solid" "brown"))))))
 0 100
 (overlay/offset (circle 4 'solid "brown") -10 -20
                 (overlay/offset (beside (rotate 270 (triangle 30 "solid" "lightcoral"))(rotate 90 (triangle 30 "solid" "lightcoral"))) -10 30
                                 (underlay/offset (circle 20 'solid "brown") 20 -70
                                                  (underlay/offset (circle 20 'solid "brown") -50 -70
                                                                   (underlay/offset
                                                                    (ellipse 50 20 'solid "brown") -80 10
                                                                    (underlay/offset
                                                                     (ellipse 50 20 'solid "brown") 80 10 
                                                                     (ellipse 120 150 'solid "red"))))))))
}
}
 }}

@blog-post["Day 17"]{
We finished what we started on day 16 and we added it to our blog. We also started looking through the data sciences and studied their structure to familiarize ourselves with it.
}

@blog-post["Day 18"]{
We worked with a partner and created our own katas challenges base on three levels - easy, medium, and hard.
                     
This is considered as level easy. The prompt is to create a straight line that starts at very top left corner and have a black rectabgle background and white ink for the line.

 @(add-curve (rectangle 100 100 "solid" "black")   
             0 0 315 1/3
             80 80 315 1/3         
             "white")
@codeblock{(require 2htdp/image)

(add-curve (rectangle 100 100 "solid" "black")   
             0 0 315 1/3
             80 80 315 1/3         
             "white")}

This is level medium. The prompt is to create a curvy line with two full curves in it in a green rectangle background and red ink for the curves.

@(add-curve (rectangle 100 100 "solid" "green")     
             20 20 20 1      
             80 80 20 1
             "red")

@codeblock{(require 2htdp/image)
           (add-curve (rectangle 100 100 "solid" "green")     
             20 20 20 1     
             80 80 20 1
             "red")
}

This is level hard. The prompt is to create an infinity sign in a pink rectangle background. The ink used for the infinity has to be half black and half white.

@(add-curve
   (add-curve
    (rectangle 100 90 "solid" "pink")
    0 50 90 1/2
    100 50 90 1/2
    (make-pen "black" 4 "solid" "round" "round"))       
   0 50 -90 1/2
   100 50 -90 1/2
   (make-pen "white" 4 "solid" "round" "round"))

@codeblock{(require 2htdp/image)
  (add-curve
   (add-curve
    (rectangle 100 90 "solid" "pink")
    0 50 90 1/2
    100 50 90 1/2
    (make-pen "black" 4 "solid" "round" "round"))       
   0 50 -90 1/2
   100 50 -90 1/2
   (make-pen "white" 4 "solid" "round" "round"))
   }}

@blog-post["Day 19"]{
 We selected codes from the pre-existing codes in the file based on which we think was the most important ones and organized those selected ones
 to make the website more easier to navigate through.
}

@blog-post["Day 20"]{
We were challenged to find bugs in the code that we were presented with. We also got that chance to modify the code to create our own game.
 }


@blog-post["July 22 - July 26"]{
Camp Week at Fleet Science Center 
                                }

@blog-post["Day 31"]{
 We worked on the data science kata-challenges. We added stimuli for some of the katas that were missing.
                     }

@blog-post["Day 32"]{
We learned about strategies on how to handle coding interviews; we used the "cracking the code interview" book.
We continued to work on the data science folder and categorized the challenges depending on which category they fall under.
}

@blog-post["Day 33"]{
We continued to do mock interviews for white board type of coding interview. We also got the chance to update our blogs.
                     }

@blog-post["Day 34"]{
We did practice coding interviews again. We also continued working on our assigned assignments which was Data Science katas
for me and my group. 
                     }

@blog-post["Day 35"]{
Sadly, this is my last day working with ThoughtStem.
                     }



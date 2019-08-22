#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-v2.rkt"
          "../new-tactics/disintegrate.rkt")


@require[@for-label[Summer2019
                    racket/base]]
@(bio "Anthony Wang"
      "fo.png"
      "I go to school at Mt. Carmel High School and I will be a senior next year.")

@blog{

@blog-post["Day 1 July 1 2019"]{We learned map, apply, combine and curry which are power traits we can use in Dr.Racket. We then made ourselves blogs to record our progress. I also finally learned what the purpose of terminal was.}
@blog-post["Day 2 July 2 2019"]{I learned how to add things to my own branch and then how to submit a pull request.}
@blog-post["Day 3 July 3 2019"]{ 10 Examples for Map and Apply
   @codeblock{
   #lang racket
(require pict)
}
Example 1:
create a rotated rectangle that is superimoposed that is 300 by 100 and has a range of 100

 @codeblock{
   (apply cc-superimpose
       (map
        (curry rotate (rectangle 300 100)) (range 100)
        )
       )
   }    
Example 2:
create a rotated elipse that is superimposed and is 100 in height and 300 in width h

 @codeblock{
   (apply cc-superimpose
 (map
  (curry rotate (ellipse 300 100)) (range 100)
  )
)
}
Example 3:
create a horizontal and centered circle and rectangle that are appended where the circle has a radius of 100 and the rectangle has a width of 100 and a height of 200 with a range of 100

 @codeblock{
   (apply cc-superimpose
       (map
      (curry rotate(hc-append (circle 100) (rectangle 100 200))) (range 100))
       )
       }
Example 4
create a vertical and centered circle and rectangle that are appended where the circle has a radius of 100 and the rectangle has a width of 100 and a height of 200 with a range of 100

 @codeblock{
   (apply cc-superimpose
       (map
        (curry rotate(vc-append (circle 100) (rectangle 100 200))) (range 100))
       )
}
Example 5
make a vertical line of 6 circles with radius 50 that are the colors of the rainbow

 @codeblock{
   (define (rainbow x)
  (map (lambda (color)
         (colorize x color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))
 (apply vc-append(rainbow (circle 50)))
}
Example 6
make a list of elipse that alternate colors of the rainbow

 @codeblock{
   (define (colors x)
  (map (lambda (color)
        (colorize x color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))
 (colors (circle 50))
}
 Example 7
 add up the sum of the square root of the numbers form 0-9

 @codeblock{
   (apply +
(map sqrt (range 10 )))
}
}
@blog-post["Day 4 July 4 2019"]{Fourth of July}
@blog-post["Day 5 July 5 2019"]{Today we discussed the redability of files. After our group worked on making easy katas. We then organized the katas and removed the duplicates and created a intro and prompts for each question. We also attempted to find a way to display the result of the code in the scribble file but we were unable to due to the fact that the website we were looking off of just inserted pictures of the codes result and not the actual result of the code. 


Worked on examples and began doing tickets. Our group was working on organizing the easy examples with 5 lines or less that used map and apply.

}

@blog-post["Day 6 August 12 2019"]{ Today we began with a quick introduction game to learn everyones names. This being my second week, I was experienced and sat closer to the front as it would minimize the amount of names I would need to memorize. 
We began with the introduction of interveiw questions to use as warmups.
Following interveiw questions, we were assigned topics to work on. My group chose music. Unfortunatly we spent most of our time attempting to figure out how to have the computer play the specified sounds. Through our testing we found that rsound does not work on any of the black chromebooks and they only work on the white chrome books.
}

@blog-post["Day 7 August 13 2019"]{
Today we began with interveiw questions. Learning from yesterday, I put comments beside my code to prepare for the explanation part of the interveiw questions.
 
Following warmups I began working on rsound . I discovered how to make sounds play at certain times and lengths. With some inspiration from Stephen's code, I was able to create a repeating beat using the base drum and claps. Tommorow I plan on implementing a melody over the beat using the synth notes.
}
@blog-post["Day 8 August 14 2019"]{ Today we began with interveiw questions.
  Sadly the wifi was down today so we continued practicing data structures. We created a theroretical startup that was built on using drones to help farmers.
  }
@blog-post["Day 9 August 15 2019"]{Today we began with interveiw questions again. Todays question tied back into the theoretical startup that we created yesterday. Following interveiw questions, I began working in rsound and I figured out how to make a repetitive beat. 
}
@blog-post["Day 10 August 16 2019"] {Today we began with number theory interveiw questions. Following interveiw questions we used rsound to recreate the first two lines of all star.
                                     }

}


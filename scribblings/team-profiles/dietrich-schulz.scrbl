#lang scribble/manual
@require[@for-label[Summer2019
                    racket/base]]

@(require "./common.rkt"
          ts-tactics
           2htdp/image)
@(bio "Dietrich Schulz"
      "Dietrich.jpg"
	"Hi, I am a computer science major at Glendale Community College. I use primarily C++ in conjuction with Unreal Engine 4 and am familiar with Java."
	
)



@blog-post["Personal Philosophy"]{
  "If it's not fun why bother"
}
      
@blog-post["Day 6"]{
 Today I was introduced Extended Mind and how it affects the way we think and how it is relevant to programming. Also I made this page today. 
}
@blog-post["Day 7"]{
 Today we reviewed git hub basics like pushing and pulling. Started on a new tactic with the group
 }
@blog-post["Day 8"]{
 Talked about the difference between specification and implemntation. Started code review after doing a pull request. Ticket issues were also assigned
 }
@blog-post["Day-9"]{
Discussed how software is eating the world and how software is becoming all encompassing from grocery shopping to science.
 }
@blog-post["Day-10"]{
 Helped other people with setting up their git and pushing and pulling. Updated gitignore file for raket back up files.
}
@blog-post["Day-11"]{
 Made a sun with a single cloud with 2htdp
 }
@(overlay/offset
 (overlay/offset(ellipse 60 30 "solid" "white")
                
                50 0
                (circle 50 "solid" "yellow"))
 0 -25
 (square 150 "solid" "blue"))

@blog-post["Day 11"]{
                     Worked on the stacking two shapes and leaning stacks for katas. 
                     }
@(define (leaning-stack-direction)
  (above/align direction
               (ellipse 60 20 "solid" "green")
               (ellipse 50 20 "solid" "red")
               (ellipse 40 20 "solid" "green")
               (ellipse 20 20 "solid" "red")))



@(define (stack shape)
  (above shape shape))




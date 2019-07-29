#lang scribble/manual

@(require "./common.rkt")


@require[@for-label[Summer2019
                    racket/base]]
@(bio "James Baldwin"
      "james_baldwin.png"
      "I go to school at La Jolla High School.  Next year, I will be a senior.
       My future plans involve applying to UCSD and getting a major in computer science.
       In the past, I have made mods for Minecraft.  The mods included updates which
added new dimensions, each with a custom biome representing one of the 50 U.S. States. I
also added bears which, well, were super agressive and attacked other mobs in the game including
deer.  I never got around to ever releasing them, but I might get around to finishing it sometime
in the middle of next school year.  If I do ever release it and you want to check it out, I'll let
you know.")
 
@blog{

      @blog-post["Day 1  (Day 6)"]{
                          Today, I learned map, apply, combine and curry which are power traits that can be used in Dr. Racket.
                          I then made my blog to record our progress. I also finally learned what the basics of how the terminal works.
                          I am a bit confused on the terminal operations but hopefully I will strengthen my understanding of it in the next couple of weeks.
                          Also my computer number is 427.

                          @codeblock{
                          ;This adds all odd numbers
                          (apply +
                                  (map (curry + -1)
                                 (map (curry * 2)
                                    (range 1 51)
                                   )
                                  )
                           )
                          (displayln "")
                          }

                          @codeblock{
                          ;This multiplies the sums of 1-10 and 11-20
                           (*
                                  (apply +
                                       (range 1 11)
                                   )
                                   (apply +
                                        (range 11 21)
                                   )
                           )
                           (displayln "")
                          }

                         }
  
      @blog-post["Day 2  (Day 7)"]{
                          I continued the work on the progress I made yesterday at home.

                           
   @codeblock{
   ;This calculates the sum of all squares 1-100
   (apply +
       (map sqr
            (range 1 101)
       )
   )
   (displayln "")
   }

   @codeblock{
   ;This multiplies all numbers 1-10
   (apply *
       (range 1 11)
   )
   (displayln "")
   }

                          
                         }
 
      @blog-post["Day 3  (Day 8)"]{
                          
                           @codeblock{
                              ;This creates an "atom" shape using ovals.
                              (apply cc-superimpose
                                   (map
                                        (curry rotate (ellipse 40 80)) (range 10)
                                   )
                              )
                            }
 

                           @codeblock{
                              ;This creates a bunch of rotated fish.
                              (apply cc-superimpose
                                   (map
                                      (curry rotate (standard-fish 100 50)) (range pi)
                                    )
                              )
                           }

                           @codeblock{
                              ;This rotates a bunch of squares to create a circle in the middle.
                              (apply cc-superimpose
                                    (map
                                          (curry rotate (rectangle 100 100)) (range 25)
                                    )
                              )
                           }
                           
                         }
                         
      @blog-post["Day 4  (Day 9)"]{
                          Fourth of July
                         }
                         
      @blog-post["Day 5  (Day 10)"]{
                          I made more katas and organized them afterwards.
                          I also attempted to find a way to display the result of the code in the scribble file but I was unable to for some reason.
                          I had a similar problem to someone else.

                          @codeblock{
                             ;This creates superimposed decreasing circles, then put rotated squares in them
                             (apply cc-superimpose
                               (append
                                       (map
                                                (compose circle sqr) (range 10 15)
                                       )
                                       (map
                                           (curry rotate (rectangle 100 100)) (range 7)
                                       )
                                )
                              )
                          }

                          @codeblock{
                           ;This adds up all even numbers
                            (apply +
                               (map (curry * 2)
                                   (range 1 51)
                               )
                            )
                            
                           (displayln "")
                           
                           }
                          
                          
                         }
      
      @blog-post["Day 7  (Day 22)"]{
                            Today begins the start of week 2.  I am having to retype this because I lost part of my blog.  Anyways, today
                            I went after to fix a bug where my blog wasn't appearing in the file system nor on the bio list
                            in github.   I successfully fixed it after clearing up some un-related errors that were disallowing for the pull
                            to operate.  Also after my first week of being super-confused on how the terminal and github operate, I finally
                            understood the basics and everything including the branching made sense.
                         }
                         
      @blog-post["Day 8  (Day 23)"]{
                            Well I lost a lot of my additions to my blog I made yesterday so I am retyping some of it that I can remember.
                            I also went on to fix some more branching errors having to deal with stuff not appearing on non-local networks.
                            Finally, I started work on implementing HTML and web-design into dr. racket.
                         }
                         
      @blog-post["Day 9  (Day 24)"]{
                            Today I learned about the differences between pragmatists and purists.  The lesson made me realize that I
                            prefer the purist approach rather than the pragmatist approach.  I still use the pragmatist approach when I
                            don't think I will be able to plan the entire project/code perfectly.  However if I am not tired and many ideas
                            have popped in my head, my instinct is to not get too ahead of myself without a plan.

                            I also continued my work with HTML in Dr. Racket.

                            New Features include:  Different Sized Texts;  Links
                            
                            @codeblock{

#lang web-server/insta

(define (start request)
  (response/xexpr
 
 '(html
   (head (title "Catchknow"))
   
   (body (h1 "Looking for an easy way to share your projects?  Learn more about Catchknow:"))
   (a ((href "http://catchknow.com/Landing/Landing")) "The Official Catchknow Website")

   (image "catchknow.png")
    
   (body (h2 "An app by Andy Baldwin, current Civil Engineer and app developer.")
         (h1 "An easy way to share your projects")
         (h2 "Use CatchKnow Projects to collaborate and promote infrastructure projects across organizations, communities and the public")


   (body (h1 "Have questions on the future of CatchKnow"))
   (a ((href "http://catchknow.com/landing/landingfaq")) "The Official Catchknow FAQ")
   )

  )
 
))

                         }
                          
                    }
                         
      @blog-post["Day 10 (Day 25)"]{
                          Today, I plan to add some new features to my HTML code.

                          New Features include:  CSS Styles;   Images
                          
    
                          @codeblock{

(define (start request)
  
(response/xexpr
 '(html
   
   '(style ((type "text/css")) "h1 { color: aquamarine }" "h3 { color: blue}" "h2 { color: darkblue }")
   
 (head (title "Catchknow"))
   
   (body (h1 "Looking for an easy way to share your projects?  Learn more about Catchknow:"))
   (a ((href "http://catchknow.com/Landing/Landing")) "The Official Catchknow Website")

   (img (src "../testing/catch.png"))
    
   (body (h2 "An app by Andy Baldwin, current Civil Engineer and app developer.")
         (h1 "An easy way to share your projects")
         (h2 "Use CatchKnow Projects to collaborate and promote infrastructure projects across organizations, communities and the public")


   (body (h1 "Have questions on the future of CatchKnow"))
   (a ((href "http://catchknow.com/landing/landingfaq")) "The Official Catchknow FAQ")
   )
   )
 ))
                                 }

                          
                         }
}

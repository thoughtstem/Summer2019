#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@require[@for-label[Summer2019
                    racket/base]]

@(define face (circle 100 "solid" "gold"))
@(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
@(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))

@(bio "Andres Ortiz"
      "andres-ortiz.png"
      "I attend the University of California, Davis. I am a third-year computer engineering major.")

@blog{

@blog-post["Personal Philosophy"]{
                                  "I strive towards becoming a software developer. It has always been a dream of mine."}

@blog-post["Day 1"]{
                    "Today I worked on the back-end of programming involving 2htdp/image. I implemented my bio into the team files and created a new kata for
  uniqye educational curriculum. The new kata involves creating a rolling-eyes emoji similar to the one found in iPhones."

@codeblock{(define face (circle 100 "solid" "gold"))
(define eye (overlay/offset (circle 10 "solid" "black") 0 20
                     (circle 30 "solid" "white")))
(define mouth (line 40 0 (pen "goldenrod" 20 "solid" "round" "round")))
(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))}

@(overlay/offset mouth 0 -50 (overlay/offset eye -40 20 (overlay/offset eye 40 20 face)))
}

@blog-post["Day 2"]{
                    "I stepped up and worked on managerial tasks such as finding issues on the ThoughtSTEM repositiory and providing tickets for other interns to fix. It was a great
                    experience to manage a group of fellow engineering interns which I believe will give me an idea of what I will be able accomplish throughout my career."}

@blog-post["Day 3"]{
                    "I continued the same job assignment I had on Day 2 while also increasing my knowledge about Github. The Managerial Team decided to create katas regarding images and animations.
                    The team agreed that memes and GIFs would be an interesting kata that a appeals to a wide age group. I took it upon myself to provide assets for GIFs, but have yet to figure out
                    if we can utilize it using fundamentals lang."}

@blog-post["Day 4"]{
                    "It was a slow day. I removed GIFs that were over 4 MB and replaced them with GIFs that were atmost 1 MB for efficiency."}

@blog-post["Day 5"]{
                    "I came up with the idea to make katas for web development. The goal for now is to replicate blog so that those who learn will be able to learn not only how to code in racket,
                     but also in front-end programming such as HTML and CSS. This would be helpful to acquire knowledge in web design."}

@blog-post["Day 6"]{
                    "Excited to be a part of this. First day involved a warm-up of updating the bios and pushing it into github. We also read the READMEs, which weren't very many."}

@blog-post["Day 7"]{
                    "It was terrifying. We stimulated an interview environment so that we experience how scary the outside world is. I haven't seen the sun in five days. We continued to work on
                    Github."}
@blog-post["Day 8"]{
                    "Today is the day I present code on the whiteboard. Wasn't my cup of tea."}}
#lang scribble/manual

@(require "./common.rkt"
          2htdp/image
          lang/posn)

@(bio "Michael Epstein"
      "michael-epstein.png"
      "I am 20 years old and from San Diego.
I currently go to the Honors College at Arizona State University and I am studying Computer Science.
I love to spend time with friends, go on adventures, and play games.
Hopefully, I can use coding to create businesses and help improve the world.")

@blog{
      
@blog-post["Personal Philosophy"]{
Organization is important, but living stress-free is necessary.}

@blog-post["Day 16"]{
Its been 58 hours since I've had fresh water. I'm starting to feel myself start to slip away, but its starting to hit me.
I need to find the key. "What is the key" you may ask. I'll tell you. For years, my people have been yearning to revert their
changes, but no one knows the key. It is the greatest mystery our world has ever faced. IT could mean the end of EXISTENCE as we know it!
So make sure you smash the subscribe button and hit that bell, stay tuned for the next video!}

 @blog-post["Day 17"]{
Hey Gamers, its ya boi. We back on the attack, I've gotten some juicy Fiji water and feel as good as new. I've been working
 hard to find the perfect design for my Chatlantic Charter, and I think I've got it! Check this beast out....

@codeblock{(define img1
 (underlay/offset (underlay/offset (underlay/offset (underlay/offset(underlay/offset
   (underlay/offset (underlay/offset (overlay/offset (circle 30 "solid" "darkblue") -75 -50
        (rectangle 300 100 "solid" "blue"))
        -75 35
        (circle 30 "solid" "darkblue"))
        100 -35
        (rectangle 75 40 "solid" "lightblue"))
        0 -15
        (pulled-regular-polygon 80 3 1.8 30 "solid" "black"))
        -50 -35
        (square 40 "solid" "hotpink"))
        -100 -35
        (square 40 "solid" "hotpink"))
        76 35
        (radial-star 8 8 32 "solid" "white"))
        -76 35
        (radial-star 8 8 32 "solid" "white")))}

And the beautiful design....

@(underlay/offset (underlay/offset (underlay/offset (underlay/offset(underlay/offset (underlay/offset (underlay/offset (overlay/offset (circle 30 "solid" "darkblue") -75 -50
        (rectangle 300 100 "solid" "blue"))
        -75 35
        (circle 30 "solid" "darkblue"))
        100 -35
        (rectangle 75 40 "solid" "lightblue"))
        0 -15
        (pulled-regular-polygon 80 3 1.8 30 "solid" "black"))
        -50 -35
        (square 40 "solid" "hotpink"))
        -100 -35
        (square 40 "solid" "hotpink"))
        76 35
        (radial-star 8 8 32 "solid" "white"))
        -76 35
        (radial-star 8 8 32 "solid" "white"))}

@blog-post["Day 18"]{
Today has been quite the day. As excited as I was to create this entry, my cheer was decimated
by the debugging proccess. Nish and I created brilliant katas, and we were foiled by a single parenthesis.
I guess this just shows the trials and tribulations of life. Here are our katas....
                    
Star:

Create a solid blue, star-shaped polygon, with step count of 2

Hint: side-length, point count, step count, fill, color

@(star-polygon 40 5 2 "solid" "blue")

@codeblock{(star-polygon 40 5 2 "solid" "blue")}

Regular Polygon:

Create a regular 6-sided polygon (hexagon) with red outline

Hint: side-length, side count, fill, color

@(regular-polygon 40 6 "outline" "red")

@codeblock{(regular-polygon 40 6 "outline" "red")}

Pulled Regular Polygon:

Create a Regular Polygon with 7 sides, that has one-third pull
on each side, acute angle, and a purple outline

Hint: side-length, side-count, pull (the curve or pulling of the sides),
angle, fill, color

@(pulled-regular-polygon 50 7 1/3 30 "outline" "purple")

@codeblock{(pulled-regular-polygon 50 7 1/3 30 "outline" "purple")}

Polygon:

Create a solid green polygon with a list of 4 points that create an arrow shape.
**Must require lang/posn in order to "make-posn"

Hint: list of vertices, fill, color

@(polygon(list(make-posn 0 0)
               (make-posn -10 20)
               (make-posn 60 0)
               (make-posn -10 -20))
               "solid" "green")

@codeblock{(polygon(list(make-posn 0 0)
               (make-posn -10 20)
               (make-posn 60 0)
               (make-posn -10 -20))
               "solid" "green")}

Congratulations! You just wasted 2 hours of you life!
 }
}

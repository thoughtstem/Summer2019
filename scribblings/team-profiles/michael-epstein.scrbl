#lang scribble/manual

@(require "./common.rkt"
          2htdp/image)

@(bio "Michael Epstein"
      "michael-epstein.png"
      "I am 20 years old and from San Diego.
I currently go to the Honors College at Arizona State University and I am studying Computer Science.
I love to spend time with friends, go on adventures, and play games.
Hopefully, I can use coding to create buisnesses and help improve the world.")

@blog{
      
@blog-post["Personal Philosophy"]{
Organization is important, but living stress-free is necessary.
}

@blog-post["Day 16"]{
Its been 58 hours since I've had fresh water. I'm starting to feel myself start to slip away, but its starting to hit me.
I need to find the key. "What is the key" you may ask. I'll tell you. For years, my people have been yearning to revert their
changes, but no one knows the key. It is the greatest mystery our world has ever faced. IT could mean the end of EXISTENCE as we know it!
So make sure you smash the subscribe button and hit that bell, stay tooned for the next video!
}
@blog-post["Day 17"]{
Hey Gamers, its ya boi. We back on the attack, I've gotten some juicy Fiji water and feel as good as new. I've been working
 hard to find the perfect design for my cool bus, and I think I've got it! Here is the code....

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
        (radial-star 8 8 32 "solid" "white"))
 }
}

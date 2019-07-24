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
Today, I met all of the other interns that were working with me. We also learned how to do basic command line code in regards to git hub.
 It was interesting to see how through using the terminal, I was able to manipulate an online page and create my own blog}

 @blog-post["Day 17"]{
Today we used 2htdp to create a picture/image using different shapes and colors. I ended up creating a bus which is posted below.

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
Today Nish and I created Katas that varied in difficulty. We were tasked with the keyword "polygon" and here are the katas we made
                    
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

 }
}

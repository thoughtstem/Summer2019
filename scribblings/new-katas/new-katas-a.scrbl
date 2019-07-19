#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../../Kata-Collections/my-fundamentals-katas/katas.rkt"
          "../../Kata-Collections/my-fundamentals-katas/rendering.rkt"
          (except-in racket read do))

@section{Intro}

This is a collection of new proto-Katas related to Maps, Apply, and Superimpose.

@section{Maps}

@bold{Example 1}

@codeblock{#lang racket
 (map sub1 (range 10))}

@bold{Example 2}

@codeblock{#lang racket
 (apply gcd (map sub1 (range -10 11 2)))}

@bold{Example 3}

@codeblock{#lang racket
 (map circle (range 10))}
This code takes a list of numbers created by 'range' which goes from 0 to 9, and applies the 'circle' function to the list.
  The circle function takes this number and outputs a circle image with that number as the diameter of the circle. So, this
  code effectively creates a list of 10 circle images increasing in diameter from 0 to 9. 

@bold{Example 4}

  @codeblock{#lang racket
 (map rectangle (range 10)(range 10))}
  This works in a similar way to the example above, except that the function used in map is now rectangle. Rectangle requires at least two
  numerical input arguments to run, so at least two lists of numbers of equal length must be inputted. This code outputs a list of rectangles
  with widths and heights going from 0 (nonexistant) to 1 (just a pixel) to 9.
 
@bold{Example 5}

  @codeblock{#lang racket
 (map string-append (list "Apple" "Banana")(list "hi" "there"))}
  When this code is run, it outputs a list with two strings: "Applehi" and "Bananathere." This is because map
  makes the function 'string-append' append the two arguments Apple and hi together because they are the first items
  in their respective list of arguments and Bananathere because they are both second in their lists and so on.

  The apply function works very similarly to the map function in that it also applies a given function to a list of arguments.
  It has the same inputs as the map function, but unlike map, apply returns a singular output of the given function rather than a list.
  It also has the same format as the map function.

@bold{Example 6}

   @codeblock{#lang racket
 (map sub1 (range 100))}

To subtract 1 from a list of 0 -> 99

@bold{Example 7}

@codeblock{#lang racket
 (map (curry cloud 100)(range 20))}

A list of 20 clouds of width 100 and height ranging from 0 to 19

 @bold{Example 8}

  @codeblock{
   #lang racket
   (require pict)

   (map (curry rotate (ellipse 40 80))(range 0 120 10))
  }

 Rotating a list of Ellipses

@bold{Example 9}

@codeblock{#lang racket
 (map shuffle (list (list "c" "o" "d" "e")))}

@bold{Example 10}

@codeblock{#lang racket
 (map (curry angel-wing 100 100) (list #t #f))}

@bold{Example 11}

@codeblock{#lang racket
 (map sub1 (list (count even? (list 1 2 3 4 5))))}

@bold{Example 12}

@codeblock{#lang racket
 (map circle (shuffle (range 10 100 10)))}

@bold{Example 13}

@codeblock{#lang racket
(map (negate =) (list 1 2 1) (list 1 2 3))
}

Compare two lists and output true whenever they find different numbers in a certain index

@section{Apply}

@bold{Example 1}

  @codeblock{#lang racket
 (apply + (range 10))}
  This applies the addition function (+) to all of the numbers in the list of 0 through 9, and so returns the number 45.
  IMPORTANT: If one were to replace the function + with the function add1, this code would return an error. This is because the
  function add1 can only have one argument with no additional possible arguments. The function +, however, takes one argument but infinite
  additional arguments. Therefore, the whole range of numbers can be added together with +.

@bold{Example 2}

@codeblock{#lang racket
 (apply hc-append (map jack-o-lantern (range 20)))}

This creates a series of jack-o-lanterns that grow in size.

@bold{Example 3}

@codeblock{#lang racket
 (apply hc-append (shuffle (map desktop-machine (range 5))))}

This shuffles a list of desktop machines

  @section{Superimpose}

@bold{Example 1}

  @codeblock{#lang racket
 (apply cc-superimpose
   (map circle (range 10)))}
  This is an example of map and apply working together. The map function generates a list of circle images increasing in size, and the apply
  function uses the cc-superimpose function to put them all together in the same image. The "cc-" part of the superimpose function can
  tells apply to put these images over each other concentrically (center center). See the Racket documentation for other options. If
  this code is run, it would generate what looks like one big black circle, which is actually made up of several circles
  with diameters 0 to 9. To space out the circles more, lets look at another power tool.

  Compose is a power tool function that allows one to put a function within another function. In mathematical terms, it lets you use
  f(g(x)), where the syntax would be:
 @codeblock{(compose f g)}
  such that function g is inside of the function f. Compose works best when the output(s) of the function g is the same as the
  input(s) of the function f. There may be ways around this, but I don't know them.


@bold{Example 2}

 @codeblock{#lang racket
   (apply cc-superimpose
       (map
        (curry rotate (rectangle 300 100)) (range 100)
        )
       )
   }

Create a rotated rectangle that is superimoposed that is 300 by 100 and has a range of 100

@bold{Example 3}

 @codeblock{#lang racket
   (apply cc-superimpose
 (map
  (curry rotate (ellipse 300 100)) (range 100)
  )
)
}

Create a rotated elipse that is superimposed and is 100 in height and 300 in width h

@bold{Example 4}

 @codeblock{#lang racket
 (apply cc-superimpose (map circle (range 10 100 20)))}

This creates concentric circles.

@bold{Example 5}

@codeblock{#lang racket
 (apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))}

This creates concentric ellipses.

@bold{Example 6}

 @codeblock{#lang racket
   (apply cc-superimpose
       (map (curry rotate (ellipse 40 80))(range 0 120 10)))
  }

 Superimposing all the rotated Ellipses

@bold{Example 7}

   @codeblock{#lang racket
 (apply cc-superimpose (map (compose circle sqr) (range 20)))}

A spiral!

@bold{Example 8}

@codeblock{#lang racket
 (apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}



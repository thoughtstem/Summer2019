#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../../Kata-Collections/my-katas/katas.rkt"
          "../../Kata-Collections/my-katas/rendering.rkt"
          (except-in racket read do))

@section{intro}


TODO: Put new proto-katas here
Placing proto-katas from blogs....

Kartiki examples
@codeblock{(map sub1 (range 10))}
  =(-1 0 1 2 3 4 5 6 7 8)
@codeblock{(apply gcd (map sub1 (range -10 11 2)))}
  = 1}

Ann examples
@codeblock{(map circle (range 10))}
This code takes a list of numbers created by 'range' which goes from 0 to 9, and applies the 'circle' function to the list.
  The circle function takes this number and outputs a circle image with that number as the diameter of the circle. So, this
  code effectively creates a list of 10 circle images increasing in diameter from 0 to 9. 

  Example 2:
  @codeblock{(map rectangle (range 10)(range 10))}
  This works in a similar way to the example above, except that the function used in map is now rectangle. Rectangle requires at least two
  numerical input arguments to run, so at least two lists of numbers of equal length must be inputted. This code outputs a list of rectangles
  with widths and heights going from 0 (nonexistant) to 1 (just a pixel) to 9.
 
  Example 3:
  @codeblock{(map string-append (list "Apple" "Banana")(list "hi" "there"))}
  When this code is run, it outputs a list with two strings: "Applehi" and "Bananathere." This is because map
  makes the function 'string-append' append the two arguments Apple and hi together because they are the first items
  in their respective list of arguments and Bananathere because they are both second in their lists and so on.

  The apply function works very similarly to the map function in that it also applies a given function to a list of arguments.
  It has the same inputs as the map function, but unlike map, apply returns a singular output of the given function rather than a list.
  It also has the same format as the map function.

  Example 1:
  @codeblock{(apply + (range 10))}
  This applies the addition function (+) to all of the numbers in the list of 0 through 9, and so returns the number 45.
  IMPORTANT: If one were to replace the function + with the function add1, this code would return an error. This is because the
  function add1 can only have one argument with no additional possible arguments. The function +, however, takes one argument but infinite
  additional arguments. Therefore, the whole range of numbers can be added together with +.
  
  Example 2:
  @codeblock{(apply cc-superimpose
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

Anthony Examples
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

Tom Examples
 1. This creates concentric circles.
   @codeblock{(apply cc-superimpose (map circle (range 10 100 20)))}
   2. This creates a series of jack-o-lanterns that grow in size.
   @codeblock{(apply hc-append (map jack-o-lantern (range 20)))}
   3. This creates concentric ellipses.
   @codeblock{(apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))}
 4. This shuffles a list of desktop machines
@codeblock{(apply hc-append (shuffle (map desktop-machine (range 5))))}

Allison Examples
  @bold{Example 2} Rotating a list of Ellipses
  @codeblock{
   #lang racket
   (require pict)

   (map (curry rotate (ellipse 40 80))(range 0 120 10))
  }
  
  @bold{Example 3} Superimposing all the rotated Ellipses
  @codeblock{
   (apply cc-superimpose
       (map (curry rotate (ellipse 40 80))(range 0 120 10)))
  }

Charbel Examples
My three map/apply examples are:
1) To subtract 1 from a list of 0 -> 99
   @codeblock{(map sub1 (range 100))}
2) A list of 20 clouds of width 100 and height ranging from 0 to 19
 @codeblock{(map (curry cloud 100)(range 20))}
3) A spiral!
   @codeblock{(apply cc-superimpose (map (compose circle sqr) (range 20)))}
Another map/apply example:
@codeblock{(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}
@codeblock{(map shuffle (list (list "c" "o" "d" "e")))}
@codeblock{(map (curry angel-wing 100 100) (list #t #f))}

@codeblock{(map sub1 (list (count even? (list 1 2 3 4 5))))}
@codeblock{(map circle (shuffle (range 10 100 10)))}

2. Compare two lists and output true whenever they find different numbers in a certain index
@codeblock{
(map (negate =) (list 1 2 1) (list 1 2 3))
}


@(render easy)

@;(render easy-map)

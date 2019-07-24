#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
         ; "../../Kata-Collections/my-fundamentals-katas/katas.rkt"
         ; "../../Kata-Collections/my-fundamentals-katas/rendering.rkt"
          (except-in racket read do))

@section{Intro}

This is a collection of new proto-Katas related to Maps, Apply, and Superimpose.

@section{Maps}

@bold{Example 1}

Create a list of numbers from 0 to 9 and subtract 1 from each of them.
@codeblock{

 #lang data-sci
 (map sub1 (range 10))}



@bold{Example 2}

Create a list of even numbers from -10 to 10. Subtract 1 from each of them and find their greatest common divisor.
@codeblock{
 #lang data-sci
 (apply gcd (map sub1 (range -10 11 2)))}

@bold{Example 3}

Draw ten circles with diameters 0 to 9.
@codeblock{#lang data-sci
 (map circle (range 10))}

@bold{Example 4}

Draw ten squares with side lengths 0 to 9.
  @codeblock{#lang data-sci
 (map rectangle (range 10)(range 10))}
 
@bold{Example 5}

Create two lists of two strings each. For each index, append the corresponding strings to each other.
  @codeblock{#lang data-sci
 (map string-append (list "Apple" "Banana")(list "hi" "there"))}

@bold{Example 6} 

Create a list of numbers from 0 to 99 and subtract 1 from each of them.
   @codeblock{#lang data-sci
 (map sub1 (range 100))}

@bold{Example 7}

Create a list of 20 clouds of width 100 and height ranging from 0 to 19.
@codeblock{#lang data-sci
 (map (curry cloud 100)(range 20))}

 @bold{Example 8}

Rotate an ellipse by a range of radians from 0 to 6 by increments of .1.
  @codeblock{
   #lang data-sci
   (map (curry rotate (ellipse 40 80))(range 0 7 .1))
  }



@bold{Example 9}

Create a list of three words. Shuffle the letters in each word independently.
@codeblock{#lang data-sci
 (map shuffle (list (list "c" "o" "d" "e") (list "i" "s") (list "c" "o" "o" "l") ))}

@bold{Example 10}

Code a set of angel wings. Use a list of booleans to create angel wings of different orientations.
@codeblock{#lang data-sci
 (map (curry angel-wing 100 100) (list #t #f))}

@bold{Example 11}

Create a list including the number of evens in a range and the number of odds in a different range. Subtract 1 from both of those items.
@codeblock{#lang data-sci
 (map sub1 (list (count even? (range 1 6)) (count even? (range 10 16))))}

@bold{Example 12}

Draw circles with diameters from 10 to 90 incrementing by 10, shuffling their order.
@codeblock{#lang data-sci
 (map circle (shuffle (range 10 100 10)))}

@bold{Example 13}

Compare the items in two lists of numbers by index. Return a list of booleans that are true if the items are inequal and false if equal.
@codeblock{#lang data-sci
(map (negate =) (list 1 2 1) (list 1 2 3))
}

Compare two lists and output true whenever they find different numbers in a certain index

@section{Apply}

@bold{Example 1}

Add all of the numbers from 0 to 9 together.
  @codeblock{#lang data-sci
 (apply + (range 10))}
 
@bold{Example 2}

Create a series of 20 horizontally-appended jack-o-lanterns that grow in size.
@codeblock{#lang data-sci
 (apply hc-append (map jack-o-lantern (range 20)))}



@bold{Example 3}

Shuffle a list of desktop machine images with various sizes.
@codeblock{#lang data-sci
 (apply hc-append (shuffle (map desktop-machine (range 5))))}



  @section{Superimpose}

@bold{Example 1}
Generate a list of circles increasing in size and concentrically superimpose them.

  @codeblock{#lang data-sci
 (apply cc-superimpose
   (map circle (range 1 100 10)))}


@bold{Example 2}

Create a pattern using 100 concentrically superimposed rectangles separated by a radian of rotation.
 @codeblock{#lang data-sci
   (apply cc-superimpose
       (map
        (curry rotate (rectangle 300 100)) (range 100))
       )
   }


@bold{Example 3}

Create a pattern using 100 concentrically superimposed ellipses separated by a radian of rotation.
 @codeblock{#lang data-sci
   (apply cc-superimpose
 (map
  (curry rotate (ellipse 300 100)) (range 100)
  )
)
}


@bold{Example 4}

Generate a list of ellipses increasing in size and concentrically superimpose them.
@codeblock{#lang data-sci
 (apply cc-superimpose (map ellipse (range 20 80 20) (range 40 160 40)))}


@bold{Example 5}

Create a pattern using 100 concentrically superimposed ellipses separated by 10 radians of rotation.
 @codeblock{#lang data-sci
            
   (apply cc-superimpose
       (map (curry rotate (ellipse 40 80))(range 0 120 10)))
  }

@bold{Example 6}

Superimpose a series of circles created by taking the squareroot of a list of numbers from 0 to 19 and using them as diameters.

   @codeblock{#lang data-sci
 (apply cc-superimpose (map (compose circle sqr) (range 20)))}


@bold{Example 7}

Superimpose a circle onto an orange cloud.
@codeblock{#lang data-sci
 (apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}



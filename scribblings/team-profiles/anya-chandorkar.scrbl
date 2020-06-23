#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Anya Chandorkar"
      "anya-chandorkar.jpg"
      "Hi my name is Anya. I'm going to be a senior in highschool this year
and I want to major in Computer Science.")

@blog{
 @blog-post["Day 1"]{
   Created new examples using the 2htdp/image library.

   @bold{Platypus example}
   @codeblock{
(define body
  (rectangle 140 70 "solid" "teal"))

(define beak
  (ellipse 50 20 "solid" "orange"))

(define front-feet
  (overlay/align "right" "bottom"
         (ellipse 30 15 "solid" "orange")
          (rotate 180 (isosceles-triangle  40 30 "solid" "teal"))))

(define eyes
  (overlay/offset (ellipse 12 10 "solid" "black")
                  5 0
                  (ellipse 30 20 "solid" "white")))

(define tail
  (rectangle 70 35 "solid" "orange"))

(define platypus
(underlay/offset tail -90 10(overlay/offset beak 75 10
       (overlay/offset eyes 50 30 (above/align "left" body
       (beside front-feet front-feet front-feet front-feet))))))

platypus
  }

   @bold{Christmas tree example}
   @codeblock{
  #lang fundamentals
              
  (above(star 40 "solid" "yellow")
      (triangle 50 "solid" "green")
      (triangle 100 "solid" "green")
      (triangle 150 "solid" "green"))
  }

   @bold{Cheese example}
   @codeblock{
    #lang fundamentals
    
   (define cheese
    (rotate 45 (triangle 300 "solid" "yellow")))

  (define holes
    (ellipse 45 30 "solid" "gold"))

 (overlay/offset
   holes
   20 75 (overlay/offset
   holes
   27 15 (overlay/offset
   holes
   100 70(overlay/offset
   holes
   50 50
   cheese))))}
 }
   @blog-post["Day 2"]{
   @bold{Hello-Cat example}
    @codeblock{
               #lang racket
(require 2htdp/image)
(define face
  (circle 40 "solid" "yellow"))
 
(define eye
  (overlay/align "middle" "middle" (circle 3 "solid" "black")
                 (circle 10 "solid" "white")))
(define nose
  (rotate 180(triangle 10 "solid" "pink")))

(define mouth
  (circle 5 "outline" "black"))

(define ear
  (triangle 30 "solid" "yellow"))

(define whiskers
  (above (line 15 -5 "black")
                 (line 15 0 "black")
                 (line 15 5 "black")))

(define (cat)
  (displayln "Hello")
  
  (overlay/offset (flip-horizontal whiskers)
                  13 -10 
                  (overlay/offset whiskers
                                  -13 -10
                                  (overlay/offset mouth
                                                  0 -30
                                                  (overlay/offset nose
                                                                  0 -10
                                                                  (overlay/offset eye
                                                                                  -15 10
                                                                                  (overlay/offset eye
                                                                                                  15 10
                                                                                                  (overlay/offset (rotate 200 ear)
                                                                                                                  -28 30
                                                                                                                  (overlay/offset (rotate 45 ear)
                                                                                                                                  28 30 
                                                                                                               face)))))))))

(cat)
}}

    @blog-post["Day 3"]{
  Today we went around and coded things on each others computers in a circle. Each of us had around 5 minutes to add something new and different onto the
  existing image. I was able to use the htdp/universe package and concepts like big-bang and ticks to animate moving images onto the still project.
  }

     @blog-post["Day 4"]{
Today my partner and I animated a polygon to change colors between those in the rainbow while spinning in a circle.
}
    
    @blog-post["Day 5"]{
   @bold{Red-Square example}
   We worked on a ticket to create katas relating to animating a red square. Some of the things we did included to modify code in
in the ticket in order to eliminate a mutable global variable. Instead, we made our functions take in the struct and then output
the struct to change it, which Stephen said is better coding etiquette than continually changing a global variable. We also made
a new control for our animation that caused the color of the square to change whenever we pressed the spacebar. Below are the
code segments that we created. 

@codeblock{(define (red-square)
  (square 40 "solid" "red"))

(rotate 45 (red-square))}

@codeblock{(define (bg)
  (square 100 "solid" "white"))

(define (red-square state)
  (underlay (bg)
            (rotate state (square 40 "solid" (make-color state)))))

(define (make-color state)
  (if (= (modulo state 2) 0) "red" "green"))

(big-bang 0
  (on-tick add1)
  (to-draw red-square))}

@codeblock{(define (bg)
  (rectangle 300 100 "solid" "white"))

(define (red-square state)
 (underlay/xy (bg) state 20
           (rotate state (square 40 "solid" "red"))))

(big-bang 0
  (on-tick add1)
  (to-draw red-square))}

@codeblock{(define (bg)
  (square 100 "solid" "white"))

(define (red-square state)
  (underlay (bg)
            (rotate (rot-amount state) (square 40 "solid" "red"))))

(define (rot-amount state)
  (if (= (modulo (quotient state 180) 2) 0) (* 2 state) (* -2 state)))

(big-bang 0
  (on-tick add1)
  (to-draw red-square))}

@codeblock{(struct position (x y) #:transparent)

(define (update-pos-x point num)
 (struct-copy position
              point
              [x (+ num (position-x point))]))

(define (update-pos-y point num)
 (struct-copy position
              point
              [y (+ num (position-y point))]))

(define (keypress->air point key)
 (cond
   [(key=? key "left")  (update-pos-x point -3)]
   [(key=? key "right") (update-pos-x point 3)]
   [(key=? key "up")   (update-pos-y point -3)]
   [(key=? key "down") (update-pos-y point 3)]
   [(key=? key "")]
   [else point]))

(define (sqr-handle-key p k)
 (keypress->air p k))

(define (create-red-square point)
(place-image (square 30 "solid" "red")
            (position-x point) (position-y point)
            (empty-scene 200 200)))

(big-bang (position 100 100)
  (on-key sqr-handle-key)
  (to-draw create-red-square))}

@codeblock{(struct position (x y c) #:transparent)

(define (update-pos-x point num)
 (struct-copy position
              point 
              [x (+ num (position-x point))]))

(define (update-pos-y point num)
 (struct-copy position
              point
              [y (+ num (position-y point))]))

(define (color point)
  (struct-copy position
               point
               [c (change-color point)]))

(define (change-color point)
  (define current-color (position-c point))
  (cond
    [(equal? current-color "red") "orange"]
    [(equal? current-color "orange") "yellow"]
    [(equal? current-color "yellow") "green"]
    [(equal? current-color "green") "blue"]
    [(equal? current-color "blue") "purple"]
    [else "red"]))

(define (keypress->air point key)
 (cond
   [(key=? key "left")  (update-pos-x point -3)]
   [(key=? key "right") (update-pos-x point 3)]
   [(key=? key "up")   (update-pos-y point -3)]
   [(key=? key "down") (update-pos-y point 3)]
   [(key=? key " ") (color point)]
   [else point]))

(define (sqr-handle-key p k)
 (keypress->air p k))

(define (create-red-square point)
(place-image (square 40 "solid" (position-c point))
            (position-x point) (position-y point)
            (empty-scene 200 200)))

(big-bang (position 100 100 "red")
  (on-key sqr-handle-key)
  (to-draw create-red-square))}
}
     @blog-post["Day 6"]{
 Today me and my partner worked on finding and creating new katas for the warmup interview questions.
 }

     @blog-post["Day 7"]
 @bold{Drone-field example}
 {
 Today we worked on interview questions Stephen put up on the board regarding a simulated drone-field example.This is an example of code in Java. 
 
public class Drone{
                   public int litersOfWater;
                   public int poundsOfSeeds;

                   public boolean supplied(){
                                             if(litersOfWater>0 && poundsOfSeeds>0){
                                                                                    return true;

                                                                                     }
                                               else{
                                                    return false;
                                                           }

                                               }
                   Drone a = new Drone();
                   Drone b = new Drone();
                   ArrayList<Drone> drone= new ArrayList<Drone>([a,b]);
                   int sum=0;

                   for(int i=0; i<drones.size();i++){
                           sum+=d.litersOfWater
                           )
                   return sum;
                  }

public class Sector{
                    int seeds;
                        boolean watered;

                        }

public class Field{
                   int row;
                   int column;

                   ArrayList<ArrayList<Sector>> sectors;
}
  }



}

 @blog-post{"Day 8"

            Today me and my partner are working on the virtual reality katas in Racket using the packet vr-lang.

            #lang vr-lang
(require 2htdp/image)

;Here we declare the star-system component
(register-remote-component star-system "https://cdn.rawgit.com/matthewbryancurtis/aframe-star-system-component/db4f1030/index.js")
 
(define (my-box n)
  (box
   (position -1 n -3)
   (rotation 0 (* n 10) 0)
   (color 76 195 (* n 50) 255)))

 (define eyes
     (overlay/offset
      (beside(circle 10 "solid" "white")(circle 10 "solid" "white"))
              0 0
      (beside (ellipse 30 20 "solid" "white")(ellipse 30 20 "solid" "white"))))

(define spongebob
 (h:overlay/offset (rectangle 70 20 "solid" "brown")
                 0 -25
                 (square 70 "solid" "yellow")
                         (overlay/offset eyes
                  0 25
                  (square 70 "solid" "yellow"))))


  

 
(define my-scene
  (scene
   (map my-box (range 10))
 
   (basic (star-system (hash "count" 1000
                             "radius" 40
                             "depth" 0
                             "texture" (h:overlay (h:circle 10 "solid" "black")     ;Note the h: prefix on 2htdp/image functions
                                                  (spongebob)))))))
   (sky (color 0 0 0 0))
 
(send-to-browser my-scene)

            }
 }
 
               
  
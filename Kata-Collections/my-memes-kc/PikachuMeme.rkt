#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "assets/Surprised-Pikachu.png"))


(define words (text "Student: *applies for unpaid internship*
Student: *is unpaid*
Student:" 36 'black))


(overlay/offset 
 words
 10 120
 image)

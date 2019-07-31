#lang Summer2019/Languages/my-web-lang/main
 #|#
(define (start request)
  (response/xexpr
   '(html
     (head (title "My Blog"))
     (body (h1 "Welcome to My Webpage!"))
     (define (list
              (h2
               "Check out this cool video!")
       )))))
 
(serve/servlet start)|#

#|#https://www.youtube.com/watch?v=eKqPCBbaZ7E|#
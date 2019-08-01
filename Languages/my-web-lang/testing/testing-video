#lang Summer2019/Languages/my-web-lang/main

(define (start request)
  (response/xexpr
   `(html
     (head (title "My Blog"))
     (body (h1 "Welcome to My Webpage!")
      (h2
       "Check out this cool video!")
      (post
       ,(my-iframe 1000 500))
      ))))

(define (my-iframe w h)
  `(iframe ((src "https://www.youtube.com/embed/eKqPCBbaZ7E")
           (height ,(~a h)) (width ,(~a w)))
          ))
 
(serve/servlet start)

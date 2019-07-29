#lang Summer2019/Languages/my-web-lang/main
 
(define (start request)
   (response/xexpr
    '(html
      (head (title "My First Blog"))
      (body (h1 "Some introductory text")))))
 
(serve/servlet start)
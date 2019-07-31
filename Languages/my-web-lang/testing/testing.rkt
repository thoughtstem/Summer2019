#lang Summer2019/Languages/my-web-lang/main
 
(define (start request)
  (response/xexpr
   '(html
     '(style
       ((type "text/css"))
       "h1 { color: green; font-family: serif; font-style: normal }
       body { color: aquamarine; font-family: serif;
font-style: italic; font-size: 44px; text-align: center}
       h2 { color: magenta; font-family: arial; font-style: normal}
h3 { color: yellow; font-family: arial; font-style: normal; font-weight: bold"
       )
     (head (title "My Blog"))
     (body (h1 "Welcome to My Webpage!"))
     (define (list
              (h2
               "My Magenta-colored Blog Post!")
              (post
               "Hey, this is my aquamarine-colored post!")
              (h3 "Hope you liked it!"))))))
 
(serve/servlet start)
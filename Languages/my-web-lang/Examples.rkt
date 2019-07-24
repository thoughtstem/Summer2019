#lang web-server/insta

; Easy: Create a blog with a title.

(define (start request)
(response/xexpr
 '(html
   (head (title "My First Blog"))
   (body (h1 "Some introductory text")))))

; Easy: Create a blog with a title and a post.

(define (start request)
(response/xexpr
'(html
  (head (title "My First Blog"))
  (body (h1 "Welcome to My Webpage!"))
  (define (list (h3 "My First Blog Post!" )
                (post "Hey, this is my first post!"))))))

; Medium: Create a blog with a title and multiple posts.

(define (start request)
(response/xexpr
'(html
  (head (title "My Blog"))
  (body (h1 "Welcome to My Webpage!"))
  (define (list (h3 "My First Blog Post!" )
                (post "This is another post")
                (h3 "My Second Blog Post!" )
                (post "Hey, this is my first post!")
                (h3 "My Third Blog Post!" )
                (post "Hey, this is my first post!"))))))

; Medium: Create a blog with a title and multiple posts and links to the the ThoughtSTEM website in one of the posts.

(define (start request)
(response/xexpr
 '(html
   '(style (head {position: absolute top: 100px}))
   (head (title "My Blog"))
    (a ((href "https://www.thoughtstem.com/")) "About Us")
   (body (h1 "Welcome to My Webpage!"))
   (define (list (h3 "My First Blog Post!" )
                 (post "Hey, this is my first post!")))
   (ul
    (li (a ((href "Link.html")) "Intro"))
    (li (a ((href "Link.html")) "Outro"))))))

; Hard: Create a blog and add a colorful title with colorful posts using basic CSS.

(define (start request)
(response/xexpr
 '(html
   '(style ((type "text/css")) "body { color: aquamarine }" "h3 { color: magenta}")
   (head (title "My Blog"))
   (body (h1 "Welcome to My Webpage!"))
   (define (list (h3 "My Magenta-colored Blog Post!" )
                 (post "Hey, this is my aquamarine-colored post!")
                 (image))))))

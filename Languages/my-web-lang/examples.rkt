#lang web-server
(require web-server/servlet-env)
(require ts-kata-util)

; Easy: Create a blog with a title.

(define-example-code Summer2019/Languages/my-web-lang/main 001-blog-with-title
 
  (define (start request)
    (response/xexpr
     '(html
       (head (title "My First Blog"))
       (body (h1 "Some introductory text")))))

  (serve/servlet start)
  )

; Easy: Create a blog with a title and a post.

(define-example-code Summer2019/Languages/my-web-lang/main 002-blog-with-a-post

  (define (start request)
    (response/xexpr
     '(html
       (head (title "My First Blog"))
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Hey, this is my first post!"))))))

  (serve/servlet start)
  )

; Medium: Create a blog with a title and multiple posts.

(define-example-code Summer2019/Languages/my-web-lang/main 003-blog-with-many-posts

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

  (serve/servlet start)
  )

; Medium: Create a blog with a title and multiple posts and links to the the ThoughtSTEM website in one of the posts.

(define-example-code Summer2019/Languages/my-web-lang/main 004-blog-with-many-posts-and-links

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
  
  (serve/servlet start)
  )

; Hard: Create a blog and add a colorful title with colorful posts using basic CSS.

(define-example-code Summer2019/Languages/my-web-lang/main 005-blog-with-a-colorful-title

  (define (start request)
    (response/xexpr
     '(html
       '(style ((type "text/css")) "body { color: aquamarine }" "h3 { color: magenta}")
       (head (title "My Blog"))
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My Magenta-colored Blog Post!" )
                     (post "Hey, this is my aquamarine-colored post!")
                     (image))))))
  
  (serve/servlet start)
  )

; Hard: Create a blog with an image

(define-example-code Summer2019/Languages/my-web-lang/main 006-blog-with-an-image
  (define (start request)
    (response/xexpr
     '(html
       (head (title "My Blog"))
       (body
        (h1 "This is the Racket Logo!")
        (img ((src "../racket-logo.png")))))))

  (serve/servlet start
                 #:extra-files-paths (list
                                      (build-path (current-directory) 'up "assets")))
  )
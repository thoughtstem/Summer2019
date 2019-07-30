#lang web-server
(require web-server/servlet-env)
(require ts-kata-util)

; When you want to create a new kata, put your testing code in the 'testing' folder
; Also, take a look at the README.md for some tips on formatting and for learning the language.

; Easy: Create a blog with a title.

(define-example-code Summer2019/Languages/my-web-lang/main 001-blog-title
 
  (define (start request)
    (response/xexpr
     '(html
       (head (title "My First Blog"))
       (body (h1 "Some introductory text")))))

  (serve/servlet start)
  )

; Easy: Create a blog with a title and a post.

(define-example-code Summer2019/Languages/my-web-lang/main 002-blog-post

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

(define-example-code Summer2019/Languages/my-web-lang/main 003-multiple-blog-posts

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

; Medium: Create a blog with a title and a link to the the ThoughtSTEM website in one of the posts.

(define-example-code Summer2019/Languages/my-web-lang/main 004-links
<<<<<<< HEAD
=======

  (define (start request)
    (response/xexpr
     '(html
       '(style (head {position: absolute top: 100px}))
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Hey, this is my first post!"))))))
  
  (serve/servlet start)
  )

; Medium: Create a blog with a title, a link to the thoughtSTEM website and an ordered list of links

(define-example-code Summer2019/Languages/my-web-lang/main 005-ordered-list

  (define (start request)
    (response/xexpr
     '(html
       '(style (head {position: absolute top: 100px}))
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Hey, this is my first post!")))
       (ol
        (li (a ((href "https://en.wikipedia.org/wiki/First")) "First"))
        (li (a ((href "https://en.wikipedia.org/wiki/Second")) "Second"))))))
  
  (serve/servlet start)
  )

; Medium: Create a blog with a title, a link to the thoughtSTEM website and an ordered list of links

(define-example-code Summer2019/Languages/my-web-lang/main 006-unordered-list
>>>>>>> 6212a427b6f00a1e52208ef45264c00d50adf7bd

  (define (start request)
    (response/xexpr
     '(html
       '(style (head {position: absolute top: 100px}))
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
<<<<<<< HEAD
                     (post "Hey, this is my first post!"))))))
=======
                     (post "Hey, this is my first post!")))
       (ul
        (li (a ((href "https://en.wikipedia.org/wiki/First")) "First"))
        (li (a ((href "https://en.wikipedia.org/wiki/Second")) "Second"))))))
>>>>>>> 6212a427b6f00a1e52208ef45264c00d50adf7bd
  
  (serve/servlet start)
  )

; Medium: Create a blog with an ordered-list of links

(define-example-code Summer2019/Languages/my-web-lang/main 005-ordered-list

(define (start request)
  (response/xexpr
   '(html
     '(style (head {position: absolute top: 100px}))
     (head (title "My Blog"))
     (a ((href "https://www.thoughtstem.com/")) "About Us")
     (body (h1 "Welcome to My Webpage!"))
     (define (list (h3 "My First Blog Post!" )
                   (post "Hey, this is my first post!")))
     (ol
      (li (a ((href "https://en.wikipedia.org/wiki/First")) "First"))
      (li (a ((href "https://en.wikipedia.org/wiki/Second")) "Second"))))))
  
(serve/servlet start)
)

; Medium: Create a blog with an unordered-list of links

(define-example-code Summer2019/Languages/my-web-lang/main 006-unordered-list

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
      (li (a ((href "https://en.wikipedia.org/wiki/Begin")) "Begin"))
      (li (a ((href "https://en.wikipedia.org/wiki/End")) "End"))))))
  
(serve/servlet start)
)

; Hard: Create a blog and add a colorful title with colorful posts using basic CSS.

(define-example-code Summer2019/Languages/my-web-lang/main 007-colorful-title

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

(define-example-code Summer2019/Languages/my-web-lang/main 008-images
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
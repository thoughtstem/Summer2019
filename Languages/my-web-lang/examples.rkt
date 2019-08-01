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

; Easy: Create a blog with a title and a link to the ThoughtSTEM website in one of the posts.

(define-example-code Summer2019/Languages/my-web-lang/main 004-links

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

; Medium: Create a blog and multiple customized links

(define-example-code Summer2019/Languages/my-web-lang/main 005-custom-links

  (define (start request)
    (response/xexpr
     '(html
       '(style
         ((type "text/css"))
         "a:link, a:visited { background-color: red;
color: white;
padding: 10px 15px;
text-align: center;
text-decoration: none;
display: inline-block }"
         "a:hover, a:active { background-color: green;
color: white }")
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (a ((href "https://www.thoughtstem.com/home/contact/")) "Contact Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Checkout all the links!"))))))
  
  (serve/servlet start)
  )

; Medium: Create a blog with a title, a link to the thoughtSTEM website and an ordered list of links

(define-example-code Summer2019/Languages/my-web-lang/main 006-ordered-list

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

; Easy

(define-example-code Summer2019/Languages/my-web-lang/main 008-custom-ordered-list

    (define (start request)
    (response/xexpr
     '(html
       '(style
         ((type "text/css"))
         "ol { list-style-type: upper-roman }"
        )
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Hey, this is my first post!")))
       
       (ol
        (li (a ((href "https://en.wikipedia.org/wiki/First")) "First"))
        (li (a ((href "https://en.wikipedia.org/wiki/Second")) "Second"))
        (li (a ((href "https://en.wikipedia.org/wiki/Third")) "Third"))))))
  
  (serve/servlet start)
  )

; Medium: Create a blog with a title, a link to the thoughtSTEM website and an ordered list of links

(define-example-code Summer2019/Languages/my-web-lang/main 007-unordered-list

  (define (start request)
    (response/xexpr
     '(html
       '(style (head {position: absolute top: 100px}))
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Hey, this is my first post!")
                     (post "Hey, this is my first post!")))
       (ul
        (li (a ((href "https://en.wikipedia.org/wiki/First")) "First"))
        (li (a ((href "https://en.wikipedia.org/wiki/Second")) "Second"))))))
  
  (serve/servlet start)
  )

; Easy: Change the style type of the unordered list

(define-example-code Summer2019/Languages/my-web-lang/main 008-custom-unordered-list
 
  (define (start request)
    (response/xexpr
     '(html
       '(style
         ((type "text/css"))
         "ul { list-style-type: square }"
        )
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Hey, this is my first post!")))
       
       (ul
        (li (a ((href "https://en.wikipedia.org/wiki/Begin")) "Begin"))
        (li (a ((href "https://en.wikipedia.org/wiki/Middle")) "Middle"))
        (li (a ((href "https://en.wikipedia.org/wiki/End")) "End"))))))
  
  (serve/servlet start)
)

; Medium

(define-example-code Summer2019/Languages/my-web-lang/main 008-unordered-block

  (define (start request)
    (response/xexpr
     '(html
       '(style
         ((type "text/css"))
         "ul { list-style-type: none;
               padding: 0;
               margin: 0;
               background-color: lightgray;
               width: 60px }"
         "li a { display: block;
                 height: 20px }"
         "li a:hover { background-color: lightblue;
                       color: white }"
        )
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "Whoa there is a block of links!")))
       
       (ul
        (li (a ((href "https://en.wikipedia.org/wiki/Begin")) "Begin"))
        (li (a ((href "https://en.wikipedia.org/wiki/Middle")) "Middle"))
        (li (a ((href "https://en.wikipedia.org/wiki/End")) "End"))))))
  
  (serve/servlet start)
)

; Hard

(define-example-code Summer2019/Languages/my-web-lang/main 008-unordered-block-with-border

    (define (start request)
    (response/xexpr
     `(html
       `(style
         ((type "text/css"))
         "ul { list-style-type: none;
               padding: 0;
               margin: 0;
               background-color: lightgray;
               border: 1px solid black;
               width: 150px }"
         "li { text-align: center;
               border-bottom: 1px solid black;
               border-left: 1px solid black}"
         "li a { display: block;
                 height: 30px; }"
         "li a:hover { background-color: lightblue;
                       color: white }"
        )
       (head (title "My Blog"))
       (a ((href "https://www.thoughtstem.com/")) "About Us")
       (body (h1 "Welcome to My Webpage!"))
       (define (list (h3 "My First Blog Post!" )
                     (post "This looks nice!")))
       
       (ul
        (li (a ((href "https://en.wikipedia.org/wiki/Begin")) "Begin"))
        (li (a ((href "https://en.wikipedia.org/wiki/Middle")) "Middle"))
        (li (a ((href "https://en.wikipedia.org/wiki/End")) "End"))))))
  
  (serve/servlet start)
 )

; Hard: Create a blog and add a colorful title with colorful posts using basic CSS.

(define-example-code Summer2019/Languages/my-web-lang/main 008-text-color

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

; Medium: Create a blog with red, blue, and green outlines around the text using basic CSS

(define-example-code Summer2019/Languages/my-web-lang/main 009-text-outline

(define (start request)
   (response/xexpr
    '(html
      '(style
        ((type "text/css"))
        "body { color: white }"
        "h1 { text-shadow: -1px 0 red, 0 1px red, 0 -1px red, 1px 0 red }"
        "h3 { text-shadow: -1px 0 blue, 0 1px blue, 0 -1px blue, 1px 0 blue }"
        "post { text-shadow: -1px 0 green, 0 1px green, 0 -1px green, 1px 0 green }")
      (head (title "My Blog"))
      (body (h1 "Welcome to My Webpage!"))
      (define (list
               (h3
                "Hey my Blog Post is blue!")
               (post
                "Ew green? what a nasty color!"))))))
 
(serve/servlet start)
)

; Hard: Create a blog with a red shadow for header1, blue shadow for header3 and a green shadow for the post using CSS.

(define-example-code Summer2019/Languages/my-web-lang/main 010-text-shadow
 
(define (start request)
   (response/xexpr
    '(html
      '(style
        ((type "text/css"))
        "body { color: black }"
        "h1 { text-shadow: 0 0 8px red, 0 0 8px purple, 0 0 10px black}"
        "h3 { text-shadow: 2px 3px 10px blue, 2px 3px 8px aquamarine, 2px 3px 8px gray }"
        "post { text-shadow: 3px 4px 6px green, 3px 4px 6px lightgreen, 3px 4px 6px yellow }")
      (head (title "My Blog"))
      (body (h1 "Welcome to My Webpage!"))
      (define (list
               (h3
                "My Blog Post has a blue shadow!")
               (post
                "Hey, my post has a green shadow!"))))))
 
(serve/servlet start)
)

; Hard: Create a blog and add a colorful title with colorful posts using basic CSS and change all aspects of the font.

(define-example-code Summer2019/Languages/my-web-lang/main 011-font-formatting

  (define (start request)
    (response/xexpr
     '(html
       '(style
         ((type "text/css"))
         "h1 { color: green; font-family: serif; font-style: normal }"
          "body { color: aquamarine; font-family: serif; font-style: italic; font-size: 44px; text-align: center}"
"h2 { color: magenta; font-family: arial; font-style: normal}"
"h3 { color: yellow; font-family: arial; font-style: normal; font-weight: bold"
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
  )

; Hard: Create a blog with an image

(define-example-code Summer2019/Languages/my-web-lang/main 012-images
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
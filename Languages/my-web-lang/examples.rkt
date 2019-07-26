#lang web-server
(require web-server/servlet-env)
(require ts-kata-util)


; When you want to create a new kata, put your testing code in the 'testing' folder
; Also, take a look at the README.md for some tips on formatting and for learning the language.

; Easy: Create a blog with a title.

(define-example-code Summer2019/Languages/my-web-lang/main 001-blog-with-title
 
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
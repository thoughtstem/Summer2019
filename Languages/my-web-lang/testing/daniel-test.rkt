#lang web-server
(require web-server/servlet-env)
 
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


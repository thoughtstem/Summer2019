#lang racket

(provide bio 
         profile-pics-path
         blog
         blog-post)

(require scribble/base
         pict
         racket/runtime-path)

(define-runtime-path profile-pics-path "./profile-pics")

(define (bio name image-path text)
  (list
    (title name)
    (frame
      #:color "black"
      #:line-width 10
      (scale-to-fit
        (bitmap (build-path profile-pics-path image-path))
        100 100))

    (para (bold "Bio: ") text)
    ))

(define (blog . entries)
  (list
    entries))

(define (blog-post title . texts)
  (list
    (para (bold title))
    texts))




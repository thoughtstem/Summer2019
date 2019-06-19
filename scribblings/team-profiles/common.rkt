#lang racket

(provide bio 
         profile-pics-path
         blog-post)

(require scribble/base
         pict
         racket/runtime-path)

(define-runtime-path profile-pics-path "./profile-pics")

(define (bio name image-path text)
  (list
    (title name)
    (section "Pic")
    (rotate
      (scale-to-fit
        (bitmap (build-path profile-pics-path image-path))
        100 100)
      (/ pi 3))

    (section "Bio")
    text))

(define (blog-post title text)
  (list
    (subsection title)
    text))

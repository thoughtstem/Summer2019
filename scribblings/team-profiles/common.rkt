#lang racket

(provide bio 
         profile-pics-path)

(require scribble/base
         racket/runtime-path)

(define-runtime-path profile-pics-path "./profile-pics")

(define (bio name image-path text)
  (list
    (title name)
    (section "Pic")
    (image (build-path profile-pics-path image-path))
    (section "Bio")
    text))

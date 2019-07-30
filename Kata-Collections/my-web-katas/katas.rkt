#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-web-lang)

    '001-blog-title
    (read "Create a webpage with a title for the blog.")

    '002-blog-post
    (read "Create a webpage with a title and a single blog post.")

    '003-multiple-blog-posts
    (read "Create a webpage with a title and multiple blog posts.")

    '004-links
    (read "Create a webpage with a title, multiple blog posts and a link.")

    '005-ordered-list
    (read "Create a webpage with a title, a blog post and an ordered list of links.")

    '006-unordered-list
    (read "Create a webpage with a title, a blog post and an unordered list of links.")

    '007-colorful-title
    (read "Create a webpage with a different colored title and a blog post.")

    '008-images
    (read "Create a webpage with a title and a blog post containing an image.")
    ))

(define-sub-collections katas
                        easy
                        medium
                        hard
                        ; ==== ADD MORE SUB COLLECTIONS HERE ====
  )


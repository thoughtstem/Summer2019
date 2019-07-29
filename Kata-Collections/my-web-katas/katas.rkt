#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-web-lang)

    '001-blog-with-title
    (read "Create a webpage with a title for the blog.")

    '002-blog-with-a-post
    (read "Create a webpage with a title and a single blog post.")

    '003-blog-with-many-posts
    (read "Create a webpage with a title and multiple blog posts.")

    '004-blog-with-many-posts-and-links
    (read "Create a webpage with a title, multiple blog posts and multiple links.")

    '005-blog-with-a-colorful-title
    (read "Create a webpage with a different colored title and a blog post.")

    '006-blog-with-an-image
    (read "Create a webpage with a title and a blog post containing an image.")
    ))

(define-sub-collections katas
                        easy
                        medium
                        hard
                        ; ==== ADD MORE SUB COLLECTIONS HERE ====
  )


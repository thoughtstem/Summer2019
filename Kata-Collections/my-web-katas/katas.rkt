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

    '003-background-color
    (read "Create a blog with a colorful background.")

    '003-multiple-blog-posts
    (read "Create a webpage with a title and multiple blog posts.")

    '004-links
    (read "Create a webpage with a title, multiple blog posts and a link.")

    '005-video
    (read "Create a blog with a YouTube video embedded and customize the video's height and width.")
    
    '005-custom-links
    (read "Create a webpage with a blog and multiple customized links.")

    '006-ordered-list
    (read "Create a webpage with a title, a blog post and an ordered list of links.")

    '007-unordered-list
    (read "Create a webpage with a title, a blog post and an unordered list of links.")

    '008-text-color
    (read "Create a webpage with a blog and a colorful title.")

    '009-text-outline
    (read "Create a webpage with a blog and a colorful outline for the text.")

    '010-text-shadow
    (read "Create a webpage with a blog and add shadows attached to your text.")

    '011-background-image
    (read "Create a blog with an image as the background.")

    '011-font-formatting
    (read "Create a blog and add a colorful title with colorful posts using basic CSS and change all aspects of the font.")

    '012-images
    (read "Create a webpage with a title and a blog post containing an image.")
    ))

(define-sub-collections katas
                        easy
                        medium
                        hard
                        ; ==== ADD MORE SUB COLLECTIONS HERE ====
  )


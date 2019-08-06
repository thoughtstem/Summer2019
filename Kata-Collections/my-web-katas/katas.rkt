#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-web-lang)

    '001-blog-title
    (read "Create a webpage with a title for the blog.")

    '002-blog-post-intro
    (read "Create a webpage with a title and a single blog post.")

    '004-style-intro
    (read "Create a blog with a colorful background.")

    '003-multiple-posts-intro
    (read "Create a webpage with a title and multiple blog posts.")

    '005-links-intro
    (read "Create a webpage with a title, multiple blog posts and a link.")

    '002-video-media
    (read "Create a blog with a YouTube video embedded and customize the video's height and width.")
    
    '006-styled-links-intro
    (read "Create a webpage with a blog and multiple customized links.")

    '001-ordered-lists
    (read "Create a webpage with a title, a blog post and an ordered list of links.")

    '002-styled-ordered-lists
    (read "Create a webpage that has a customized ordered list.")

    '003-ordered-lists-block
    (read "Create a webpage that has a ordered list without padding or any margins, has a gray background that turns lightgreen when hovered over.")

    '004-bordered-ordered-lists-block
    (read "Create a webpage that has a ordered list without padding or any margins, has a gray background that turns lightgreen when hovered over.
           Add a border around the unordered list.")

    '005-unordered-lists
    (read "Create a webpage with a title, a blog post and an unordered list of links.")

    '006-styled-unordered-lists
    (read "Create a webpage that has a customized unordered list.")

    '007-unordered-list-block
    (read "Create a webpage that has a unordered list without padding or any margins, has a gray background that turns lightblue when hovered over.")

    '008-bordered-unordered-list-block
    (read  "Create a webpage that has a unordered list without padding or any margins, has a gray background that turns lightblue when hovered over.
            Add a border around the unordered list.")

    '001-text-color
    (read "Create a webpage with a blog and a colorful title.")

    '002-text-outline
    (read "Create a webpage with a blog and a colorful outline for the text.")

    '004-text-shadow
    (read "Create a webpage with a blog and add shadows attached to your text.")

    '003-background-image-media
    (read "Create a blog with an image as the background.")

    '003-text-font
    (read "Create a blog and add a colorful title with colorful posts using basic CSS and change all aspects of the font.")

    '001-image-media
    (read "Create a webpage with a title and a blog post containing an image.")
    ))

(define-sub-collections katas
                        easy
                        medium
                        hard
                        ; ==== ADD MORE SUB COLLECTIONS HERE ====
  			
			lists
			text
			media
			intro
)


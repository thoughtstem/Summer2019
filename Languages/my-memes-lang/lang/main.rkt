#lang at-exp racket

(require 2htdp/universe)
(require scribble/srcdoc)
(require (for-doc racket/base scribble/manual ))

(require ts-kata-util
         "../assets.rkt"
         2htdp/image ;You'll probably delete this.
         ;If skinning a language, require that here
         )

(define drake (bitmap "../assets/Drake.png"))

(define confused-anime
   (bitmap "../assets/Confused-Anime.png"))

(define pikachu
   (bitmap "../assets/Surprised-Pikachu.png"))

(define headache
   (bitmap "../assets/Types-of-Headaches.png"))

(define pooh
  (bitmap "../assets/Pooh.png"))

(define button (bitmap "../assets/Button.png"))

(define distracted-boyfriend
   (bitmap "../assets/Distracted-Boyfriend.png"))


(provide drake)
(provide confused-anime)
(provide pikachu)
(provide headache)
(provide pooh)
(provide button)
(provide distracted-boyfriend)
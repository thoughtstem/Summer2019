#lang racket

(provide katas)

(require ts-kata-util/katas/main)
         

(define katas
  (lang->kata-collection 'Summer2019/Languages/my-lang))

(define-sub-collections katas
                        easy
                        medium
                        hard
                        ; ==== ADD MORE SUB COLLECTIONS HERE ====
                        jason

                        michael-nish
                        cristine-sandora 
                        jacob-dietrich
                        ambre-emily
                        jake-jack
                        tom-maya
                        
                        grpa
                        katas-b

  )



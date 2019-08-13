#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-interview-lang)
    
    '001-sum-up-list-of-numbers
    (read "Write a function that takes a list of numbers and returns their sum. Use classic recursion.  Show your tests.")
    
    '002-sum-up-list-of-numbers
    (read "Write a function that takes a list of numbers and returns their sum. Use foldl. Show your tests.")

    '003-sum-up-list-of-numbers
    (read "Write a function that takes a list of numbers and returns their sum. Use apply. Show your tests.")

    '001-max-value-in-list
    (read "Write a function that takes a list of numbers and returns the largest number. Show your tests.")

    '001-even-odd-number
    (read "Write a function that takes a number and returns whether the number is even or odd. Show your tests.")
    
    '001-prime-number
    (read "Write a function that takes a number and returns whether the number is prime or not. Show your tests.")

    '001-product-of-list-of-numbers
    (read "Write a function that takes a list of numbers and returns their product. Show your tests.")

    
    ))


#lang racket

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-interview-lang)
    
    'lists~sum-001
    (read "Write a function that takes a list of numbers and returns their sum. Use classic recursion.  Show your tests.")
    
    'lists~sum-002
    (read "Write a function that takes a list of numbers and returns their sum. Use foldl. Show your tests.")

    'lists~sum-003
    (read "Write a function that takes a list of numbers and returns their sum. Use apply. Show your tests.")

    'lists~max-001
    (read "Write a function that takes a list of numbers and returns the largest number. Show your tests.")
    
    'lists~product-001
    (read "Write a function that takes a list of numbers and returns their product. Show your tests.")

    'lists~average-001
    (read "Write a function that takes a list of numbers and returns the average of those numbers. Show your tests.")
    
    'numbers-001
    (read "Write a function that takes a number and returns whether the number is even or odd. Show your tests.")
    
    'numbers-002
    (read "Write a function that takes a number and returns whether the number is prime or not. Show your tests.")

   

    
    ))
(define-sub-collections katas
  lists
  numbers)


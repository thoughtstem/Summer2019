#lang racket

(require rackunit "../scribblings/new-tactics/main.rkt") 

(define (check-tactic tactic)
  ;A bit simplistic, but it's better than nothing.  This at least checks that a tactic is a list.  We can add more robust checks later. (All tactics are lists, but not all lists are tactics)
  (check-pred list? tactic))


(check-tactic
  (SDBribeTactic 'Coach 'Team))  



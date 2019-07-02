#lang racket

(require rackunit "../scribblings/new-tactics/main.rkt") 

(define (check-tactic tactic)
  ;A bit simplistic, but it's better than nothing.  This at least checks that a tactic is a list.  We can add more robust checks later. (All tactics are lists, but not all lists are tactics)
  (check-pred list? tactic))


(check-tactic
  (SDBribeTactic 'Coach 'Team))

(check-tactic
 (code-anatomy-race 'Coach
                    'Team
                    'Computers
                    'Challenge-Card
                    'White-Board
                    'Markers))

(check-tactic
 (no-peeking))

(check-tactic
 (disintegrating-code-no-peeking 'Coach
                                 'Team
                                 'Computers
                                 'Challenge-Card
                                 'White-Board
                                 'Markers))

(check-tactic
 (disintegrating-pairs 'Coach
                       'Team
                       'Computers
                       'Challenge-Card
                       'White-Board
                       'Markers))

(check-tactic
 (paraphrase 'Coach
                       'Team
                       'Computers
                       'Challenge-Card
                       'White-Board
                       'Markers))
 



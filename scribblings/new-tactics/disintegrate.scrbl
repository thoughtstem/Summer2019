#lang scribble/manual

@(provide about disintegrating-pairs)

@(require
          ts-tactics
          
          "./disintegratingv2.rkt")

@;about is a function for providing information about tactics. It is from the manual.scrbl file, but without it being its own section and with the title being bold
@(define (about #:title title
                #:summary summary
                #:science (science "")
                #:key-metacognitive-concepts (metacognition '())
                #:short-term-outcomes (short-term '())
                #:long-term-outcomes (long-term '())
                )
   (list
     (para (bold "ABOUT " title))
     (para (bold "Summary.") " " (italic summary))
     (para (bold "Scientific Grounding.") " " science)
     (bold "Key meta-cognitive concepts")
     (itemize (map item metacognition))
     (bold "Short-term cognitive outcomes")
     (itemize (map item short-term))
     (bold "Long-term cognitive outcomes")
     (itemize (map item long-term))))

@;The no peeking function will display information about our variant of disintegrating code including an about section and instructions
@(define (no-peeking) (list
          
@(tactic->scribble
    (disintegrating-pairs 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers))

@(about #:title   "Paired Disintegration"
        #:summary "Learners begin by copying code verbatim and end by writing it from memory without looking at their keyboard, which adds an extra element of difficulty."
        #:science "This is a type of \"Faded Worked Example\" -- an activity in which the educator gradually removes pedagogical scaffolding until there is none left."
        #:key-metacognitive-concepts (list "Don't let learners believe that real programmers memorize and regurgitate."
                                           "Make it clear that the goal is fluency and language mastery."
                                           "Make it clear that memorization is just a power tool for language learning (similar to memorizing a Spanish story if you were in Spanish class.)"
                                           "Make it clear that in the grand scheme of things, it's less about what they are memorizing and more about the act of memorization itself, and how that trains your brain to be a better programmer."
                                           (list "Tell them it's okay if they eventually forget what they just memorized -- as long as they remember " (bold "how") " to memorise it again.")
                                           "Make it clear that they are training a powerful abstract skill: The ability to translate from English into code." 
                                           "Make it clear that this is critical for being a software developer, and that it will take many years to become an expert at this cognitive process.")
        #:short-term-outcomes (list "Introduces specification (front of card) and implementation (back of card)." 
                                    "Introduces learners to the Fundamental Cognitive Act of Software Development: the translation from specification to implementation.")
        #:long-term-outcomes  (list "Trains pattern matching (\"code vision\")"
                                    "Trains recall and recognition for language identifiers (\"knowledge acquisition\")"
                                    "Trains general memory skills for abstract grammars (\"chunking\")"
                                    "Trains grammatical intuitions for the language at hand (\"syntactic and semantic intuition\")"
                                    "Frees working memory for creativity and design by reducing cognitive load caused by lack of language fluency."
                                    "Improves typing abilities"))
))


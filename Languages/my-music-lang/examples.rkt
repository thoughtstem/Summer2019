#lang racket

(require ts-kata-util)

(define-example-code Summer2019/Languages/my-music-lang/main all-star

(define d click-1)

(define beat-length 30000)

(define (on-beat sound beat-length)
  (define wait (- beat-length (rs-frames sound)))
  (if (zero? wait) sound
      (rs-append
       sound
       (silence wait))))


(define (on-half (sound (silence 1)))
  (on-beat sound (* beat-length 2)))

(define (on-dottedQuarter (sound (silence 1)))
  (on-beat sound (* beat-length 1.5)))

(define (on-quarter (sound (silence 1)))
  (on-beat sound beat-length))

(define (on-eighth (sound (silence 1)))
  (on-beat sound (/ beat-length 2)))


(define (quarter-note tone)
  (synth-note "vgame" 49 tone beat-length))

(define (dottedQuarter-note tone)
  (synth-note "vgame" 49 tone beat-length))

(define (half-note tone)
  (synth-note "vgame" 49 tone (* 2 beat-length)))

(define (eighth-note tone)
  (synth-note "vgame" 49 tone (/ beat-length 2)))

(define (loop sound n)
  (rs-append*
   (map (thunk* sound)
        (range n))))


(define (downbeats n)
  (loop (on-quarter click-1) n))


(define (upbeats n)
  (rs-append (on-eighth)
             (loop (on-quarter click-2) n)))


(define (beat-track n)
  (rs-overlay
   (downbeats n)
   (upbeats n)))
(define base
  (rs-append*
   (list
    (on-quarter (quarter-note 21))

    (on-dottedQuarter (dottedQuarter-note 42))
    (on-eighth (eighth-note 48))
    (on-dottedQuarter (dottedQuarter-note 49))
    (on-eighth (eighth-note 51))

    (on-dottedQuarter (dottedQuarter-note 44))
    (on-eighth (eighth-note 46))
    (on-dottedQuarter (dottedQuarter-note 47))
    (on-eighth (eighth-note 49))

    (on-dottedQuarter (dottedQuarter-note 42))
    (on-eighth (eighth-note 48))
    (on-dottedQuarter (dottedQuarter-note 49))
    (on-eighth (eighth-note 51))

    (on-dottedQuarter (dottedQuarter-note 44))
    (on-eighth (eighth-note 46))
    (on-dottedQuarter (dottedQuarter-note 47))
    (on-eighth (eighth-note 49))

    (on-dottedQuarter (dottedQuarter-note 42))
    (on-eighth (eighth-note 48))
    (on-dottedQuarter (dottedQuarter-note 49))
    (on-eighth (eighth-note 51))

    (on-dottedQuarter (dottedQuarter-note 44))
    (on-eighth (eighth-note 46))
    (on-dottedQuarter (dottedQuarter-note 47))
    (on-eighth (eighth-note 49))

    (on-dottedQuarter (dottedQuarter-note 42))
    (on-eighth (eighth-note 48))
    (on-dottedQuarter (dottedQuarter-note 49))
    (on-eighth (eighth-note 51))

    (on-dottedQuarter (dottedQuarter-note 44))
    (on-eighth (eighth-note 46))
    (on-dottedQuarter (dottedQuarter-note 47))
    (on-eighth (eighth-note 49))

    )))

(define melody1
  (rs-append*
   (list
    (on-quarter (quarter-note 66))

    (on-eighth (eighth-note 73))
    (on-eighth (eighth-note 70))
    (on-quarter (quarter-note 70))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 66))
    (on-eighth (eighth-note 66))

    (on-quarter (quarter-note 71))

    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 68))
    (on-quarter (quarter-note 66))
    (on-eighth (eighth-note 66))

    (on-eighth (eighth-note 73))
    (on-eighth (eighth-note 70))
    (on-quarter (quarter-note 70))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 66))
    (on-eighth (eighth-note 66))

    (on-quarter (quarter-note 63))

    (on-dottedQuarter (dottedQuarter-note 61))
    (on-quarter (quarter-note 21))
    (on-eighth (eighth-note 66))
    (on-eighth (eighth-note 66))

    (on-eighth (eighth-note 73))
    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 66))
    (on-eighth (eighth-note 66))

    (on-quarter (quarter-note 71))

    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 68))
    (on-eighth (eighth-note 66))
    (on-eighth (eighth-note 66))

    (on-quarter (quarter-note 73))

    (on-eighth (eighth-note 70))
    (on-eighth (eighth-note 70))
    (on-quarter (quarter-note 68))
    (on-eighth (eighth-note 66))
    (on-eighth (eighth-note 66))
    (on-quarter (quarter-note 68))
    (on-dottedQuarter (dottedQuarter-note 63))

     
    
    
                )
    ))

(define main
  (rs-overlay*
   (list
    ;(resample 0.5 melody1)
    (loop base 1)
    (loop melody1 1)
    ;(loop (resample 2 melody1) 10)
    ;(beat-track 20)
    )))

  )


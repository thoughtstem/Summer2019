#lang racket
(require pict)

(define fontsize 15)
(define pict-a (frame (text " ts-kata-util/katas/rendering.rkt " null fontsize)))
(define pict-b (frame (text " ts-kata-util/katas/main.rkt " null fontsize)))
(define pict-c (frame (text " Kata-Collection/*/katas.rkt " null fontsize)))
(define pict-d (frame (text " Kata-Collections/*/rendering.rkt " null fontsize)))
(define pict-e (frame (text " Kata-Collections/*/katas.rkt " null fontsize)))
(define pict-f (frame (text " Kata-Collections/*/rendering.rkt " null fontsize)))

(define pict-g (frame (text " Languages/*/main.rkt " null fontsize)))
(define pict-h (frame (text " Languages/*/lang.rkt " null fontsize)))
(define pict-i (frame (text " Languages/*/lang/main.rkt " null fontsize)))
(define pict-j (frame (text " Languages/*/assets.rkt " null fontsize)))
(define pict-k (frame (text " 2htdp/image " null fontsize)))
(define pict-l (frame (text " 2htdp/universe " null fontsize)))
(define pict-m (frame (text " data-sci " null fontsize)))
(define pict-n (frame (text " racket " null fontsize)))
(define pict-o (frame (text " Languages/my-fundamental-katas/katas.rkt " null fontsize)))
(define pict-p (frame (text " Languages/my-fundamental-katas/rendering.rkt " null fontsize)))

(define pict-a1 (frame (text " master-doc.scrbl " null fontsize)))
(define pict-a2 (frame (text " team-profiles/common.rkt " null fontsize)))
(define pict-a3 (frame (text " Summer2019.scrbl " null fontsize)))
(define pict-a4 (frame (text " tips-and-tricks " null fontsize)))
(define pict-a5 (frame (text " tactics-variants-*.scrbl " null fontsize)))
(define pict-a6 (frame (text " new-katas-a " null fontsize)))
(define pict-a7 (frame (text " new-katas-b " null fontsize)))
(define pict-a8 (frame (text " new-katas-c " null fontsize)))
(define pict-a9 (frame (text " new-katas-070819 " null fontsize)))

(define pict-b1 (frame (text " team-profiles/bios.scrbl " null fontsize)))


(define (newlayer ss)
  (vc-append 50 (first ss)
  (apply hc-append 100 (rest ss))))
(define (one-arrow to layer from)
  (pin-arrow-line 5 layer
                  from ct-find
                  to cb-find))
(define (makediagram . boxes)
  (define layer (newlayer boxes))
  (apply cc-superimpose (map (curry one-arrow (first boxes) layer) (rest boxes))))

(define (KataCollections)
(pin-arrow-line 5
(pin-arrow-line 5
                (vc-append 50 
                           (makediagram pict-e pict-a pict-b)
                           pict-d)
                pict-b cb-find
                pict-d ct-find)
pict-a cb-find
pict-d ct-find))

(KataCollections)
(makediagram pict-g (makediagram pict-h pict-i pict-j pict-k pict-l pict-m pict-n))
(makediagram pict-a1 pict-a2 (makediagram pict-a3 pict-b1) pict-a4 pict-a5 (makediagram pict-a6 pict-o pict-p) pict-a7 pict-a8 pict-a9)







#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "./assets/Monkey-Puppet.png"))


(define camper (text "Camper: *to another camper* Hey you can't
copy from the internet that's cheating" 20 'black))
(define team-leader (text "Team leaders:" 20 'black))

(define words
  (overlay/offset
   team-leader
   130 -70
   camper))


(overlay/offset 
 words
 -40 140
 image)

#lang fundamentals

(require 2htdp/universe
         2htdp/image)

(define image (bitmap "./assets/Monkey-Puppet.png"))


(define camper (text "Camper: *to another camper* Hey you can't
copy from the internet that's cheating" 18 'black))
(define team-leader (text "Team leaders:" 18 'black))

(define words
  (overlay/offset
   team-leader
   110 -70
   camper))


(overlay/offset 
 words
 0 140
 image)

;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname posn) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Default data structure
; posn for Position
(make-posn 1 2)

; Check if a variable is posn
(posn? (make-posn 1 2))

; Get the 1st variable
(posn-x (make-posn 12 13))

; Get the 2nd variable
(posn-y (make-posn 14 15))

; Since we are calculating the distance to origin, we assume that
; (and (number? (posn-x r-posn)) (number? (posn-y r-posn)))
(define (distance-to-0 r-posn)
  (sqrt (+ (sqr (posn-x r-posn)) (sqr (posn-y r-posn)))))

(distance-to-0 (make-posn 14 15))
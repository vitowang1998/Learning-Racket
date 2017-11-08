;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sum:tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; sum the number in the posns
;; sum/tree: tree -> number
;; O(n) where n is the number of nodes
(define (sum/posn p)
  (cond
    [(number? p) p]
    [else (+ (sum/posn (posn-x p)) (sum/posn (posn-y p)))]))
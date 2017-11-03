;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname number-of-emergence) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Number of emergence of an element in a posn
;; O(n)
;; posn + int -> int
(define (number-of-emerge/posn pair n)
  (cond
    [(number? pair) (if (= pair n) 1 0)]
    [else (+ (number-of-emerge/posn (posn-x pair)) (number-of-emerge/posn (posn-y pair)))]))


; Everything that adds up can be solved with the algorithms above
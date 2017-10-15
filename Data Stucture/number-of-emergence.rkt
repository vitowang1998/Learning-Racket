;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname number-of-emergence) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Number of emergence of an element in a posn

(define (number-of pair n)
  (cond
    [(number? pair) (if (= pair n) 1 0)]
    [else (+ (number-of (posn-x pair)) (number-of (posn-y pair)))]))


; Everything that adds up can be solved with the algorithms above
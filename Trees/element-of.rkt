;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname element-of) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; element-of
(define a (make-posn 213 12345))

(define (element-of b n)
  (cond
    [(number? b) (= b n)]
    [else (or (element-of (posn-x b) n) (element-of (posn-y b) n))]))


(element-of a 123)
(element-of a 213)
(element-of a 12345)
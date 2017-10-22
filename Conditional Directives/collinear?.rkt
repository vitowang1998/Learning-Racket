;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname collinear) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; This is a function used to check if the 3 points given are collinear
;; This is also a demonstration to the built-in function "if"

;; O(n) = 1
(define (collinear? x1 y1 x2 y2 x3 y3)
  (if (and (= (* (- y2 y1) (- x3 x1)) (* (- x2 x1) (- y3 y1))) (= (* (- y3 y2) (- x3 x1)) (* (- y3 y1) (- x3 x2)))) true false))

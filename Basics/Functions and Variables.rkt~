#lang racket
; Variables and Programs
; How to define (declare) a variable

; This is a function computes the area of a circle given its radius
(define (area-of-circle r)
  (* pi (sqr r)))

; test the function
(area-of-circle 4)


; If we have a ring and we want to know its area
(define (area-of-ring R r)
  (* pi (- (sqr R) (sqr r))))
; A = pi * (R^2 - r^2)

(area-of-ring 2 1)

; There is another way of defining this
; The area of ring equals to the area of the bigger circle minus the area of the smaller circle.
(define (2ndWay R r)
  (- (area-of-circle R) (area-of-circle r)))

(2ndWay 2 1)
; The answer should be the same
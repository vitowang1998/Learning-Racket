#lang racket

;; O(n)
;; Take the first n terms in a list
;; list + n -> list
(define (take/list lst n)
  (cond
    [(zero? n) empty]
    [else (cons (car lst) (take/list (cdr lst) (sub1 n)))]))
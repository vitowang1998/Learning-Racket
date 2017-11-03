#lang racket
;; get the sum of the numbers in a list
;; O(n), n = (length lst)
;; list -> number
(define (sum/list lst)
  (cond
    [(empty? lst) 0]
    [else (+ (car lst) (add/list (cdr lst)))]))
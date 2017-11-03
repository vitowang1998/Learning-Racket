#lang racket

;; Add 1 to every element in the list
;; O(n), n = (length lst)
;; list of int -> list
(define (add1/list lst)
  (cond
    [(empty? lst) empty]
    [else (cons (add1 (car lst)) (add1/list(cdr lst)))]))
#lang racket
;; This function will get rid of same items in a list, does not sort the list
;; simplify/list: list -> list
;; O(n^2) where n is the length of the list
(define (simplify/list lst)
  (cond
    [(empty? lst) empty]
    [(member (car lst) (cdr lst)) (simplify/list (cdr lst))]
    [else (cons (car lst) (simplify/list (cdr lst)))]))
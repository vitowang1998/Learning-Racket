#lang racket
;; change every element to something else
;; type(number/symbol/etc.) + list -> list
(define (change-to-something/list thing lst)
  (cond
    [(empty? lst) empty]
    [else (cons thing (change-to-something/list thing (cdr lst)))]))


(change-to-something/list 'hello (build-list 4 values))
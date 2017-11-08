#lang racket
;; Built-in
(reverse (build-list 10 values))


;; A function that reverses the order of a list
;; O(n^2)
(define (reverse/list lst)
  (cond
    [(empty? lst) empty]
    [(append (reverse/list (cdr lst)) (list (car lst)))]))

(reverse/list (build-list 10 values))
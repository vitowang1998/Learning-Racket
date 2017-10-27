#lang racket

;; takes in a sorted list, check if all elements are distinct
;; O(n)
;; list -> bool
(define (all-elements-distinct?/list lst)
  (cond
    [(= (length lst) 1) true] 
    [(= (car lst) (cadr lst)) false]
    [else (all-elements-distinct?/list (cdr lst))]))
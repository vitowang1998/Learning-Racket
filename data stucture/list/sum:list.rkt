#lang racket
;; get the sum of the numbers in a list
;; O(n), n = (length lst)
;; list -> number
(define (sum/list lst)
  (cond
    [(empty? lst) 0]
    [else (+ (car lst) (add/list (cdr lst)))]))



(define (sum/list-acc lst acc)
  (cond
    [(empty? lst) acc]
    [else (sum/list-acc (rest lst) (+ (first lst) acc))]))


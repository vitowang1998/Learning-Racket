#lang racket

;; map is a function that
;; this function is built-in
(map add1 (build-list 5 values))
(map (λ (elem) 'char) (build-list 5 values))


;; map applies fn to every element in a list and construct the result to be a list
;; map: function + list -> list
;; O(n) where n is the length of the list
(define (map fn lst)
  (cond
    [(empty? lst) empty]
    [else (cons (fn (car lst)) (map fn (cdr lst)))]))
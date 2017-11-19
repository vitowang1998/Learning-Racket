#lang racket
(define test (build-list 10 values))

;; filter takes the "qualified" elements in a list and cons them into a new list
(filter odd? test)


;; Takes the "qualified" elements in a list and cons them into a new list
;; O(n) where n is the size of the list
;; filter/list: function + list -> list
;; function: number -> boolean
(define (filter/list fn lst)
  (if (empty? lst)
      ; then
      empty
      ; else
      (if (fn (car lst))
          ; then
          (cons (car lst) (filter/list fn (cdr lst)))
          ; else
          (filter/list fn (cdr lst)))))
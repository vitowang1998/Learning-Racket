#lang racket
;; foldl do (f (car lst) acc) to every element in a list
;; proc. + number+ list -> number
(define (foldl/list f acc lst)
  (cond
    [(empty? lst) acc]
    [else (foldl/list f (f (car lst) acc) (cdr lst))]))

(build-list 4 values)
(foldl/list - 1 (build-list 4 values))

;; (foldl - 1 (0 1 2 3))
;; (foldl - -1 (1 2 3))
;; (foldl - 2 (2 3))
;; (foldl - 0 (3))
;; (foldl - 3 '())
;; 3


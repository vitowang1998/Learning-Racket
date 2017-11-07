#lang racket



;; the mechanism for foldr
(define (foldr/list f z lst)
  (cond
    [(empty? lst) z]
    [else (f (car lst) (foldr/list f z (cdr lst)))]))


(foldr + 0 (build-list 4 values))
(foldr/list + 0 (build-list 4 values))
;; (+ 0 (foldr + 0 (1 2 3)))
;; (+ 0 (+ 
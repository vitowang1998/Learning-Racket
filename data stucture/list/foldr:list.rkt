#lang racket



;; the mechanism for foldr
;; applies f to each element in list
;; starting point: z
;; foldr/list: fn + starting point + list -> result
(define (foldr/list f z lst)
  (cond
    [(empty? lst) z]
    [else (f (car lst) (foldr/list f z (cdr lst)))]))


(foldr + 1 (build-list 4 values))
(foldr/list + 1 (build-list 4 values))
;; (+ 0 (foldr + 0 (1 2 3)))
;; (+ 0 (+ 1 (foldr + 0 (2 3))))
;; (+ 0 (+ 1 (+ 2 (foldr + 0 (3)))))
;; (+ 0 (+ 1 (+ 2 (+ 3 (foldr + 0 empty)))))
;; (+ 0 (+ 1 (+ 2 (+ 3 0))))
;; (+ 0 (+ 1 (+ 2 3)))
;; (+ 0 (+ 1 5))
;; (+ 0 6)
;; 6


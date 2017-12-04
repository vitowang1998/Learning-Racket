#lang racket
;; drop the first n elements in a list
;; O(n)
;; drop/list: list + number -> list
(define (drop/list lst n)
  (if (zero? n) lst
      (drop/list (cdr lst) (sub1 n))))
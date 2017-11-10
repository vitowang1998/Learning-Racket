#lang racket
;; true-adt is a function that returns the first parameter it passes in
;; ((function) function) -> function
;; O(1)
(define true-adt
  (λ (x)
    (λ (y)
      x)))

(define false-adt
  (λ (x)
    (λ (y)
      y)))

(define (true?-adt bool)
  ((bool 'true-adt) 'false-adt))

(define (false?-adt bool)
  ((bool 'false-adt) 'true-adt))



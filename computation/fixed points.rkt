#lang racket
;; fixed points
;; definition
;; x is the fixed point of a function f iff. (f x) = x
;; hence, we have (f (f (f ... (f x)) ...) = x

(define (double x)
  (* 2 x))

;; by inspection, the fixed point of (double x) is x = 0

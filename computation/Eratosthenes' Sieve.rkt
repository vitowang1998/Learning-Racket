#lang racket

;; Eratosthenes' Sieve
;; O(√n)
;; checks if n is prime
(define (prime? n acc)
  (cond
    [(= 1 n) false]
    [(= 2 n) true]
    [(= 0 (remainder n acc)) false]
    [(>= acc (add1 (floor (sqrt n)))) true]
    [else (prime? n (add1 acc))]))
#lang racket
;; Returns the last element of a list
;; Unfortunately, O(n)
;; list -> type (most cases, number)
(last (build-list 1000 add1))
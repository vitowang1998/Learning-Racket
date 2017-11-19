#lang racket
;; A function that sums all the odd numbers in a tree
;; O(n) where n is the size of the tree
;; sum-odd/bst: tree -> number
(define (sum-odd/bst t)
  (if (leaf?/bst t)
      (if (odd? t) (node-key t)
          ; else
          0)
      ; else
      (+ (sum-odd/bst (node-left t))
         (sum-odd/bst (node-right t)))))
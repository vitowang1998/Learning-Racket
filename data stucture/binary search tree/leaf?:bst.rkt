#lang racket
(define-struct node (left right key))

;; check if a node is a leaf of a bst
;; O(1)
;; leaf?/bst: node -> boolean
;; special case: note that an empty tree is also a leaf here
(define (leaf?/bst bst)
  (and (empty? (node-left bst))
       (empty? (node-right bst))))
#lang racket
(define-struct node (left right key))

;; changes a bst to a list
;; O(n) where n is the size of the tree
;; bst->list: bst -> list
(define (bst->list t)
  (cond
    [(empty? t) empty]
    [else (append (bst->list (node-left t)) (cons (node-key t) (bst->list (node-right t))))]))
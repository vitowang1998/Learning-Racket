#lang racket

(define-struct node (left right key))

;; checks if a tree is balanced
;; O(n) where n is the size of tree
;; balanced?/tree: tree/bst -> boolean
(define (balanced?/tree t)
  ;; Count the number of nodes in a tree
  ;; Running time: O(n)
  ;; tree -> number
  (define (count-node/tree t)
    (cond
      [(empty? t) 0]
      [else (+ 1 (count-node/tree (node-left t)) (count-node/tree (node-right t)))]))

  (cond
    [(empty? t) true]
    [else (and (balanced?/tree (node-left t))
               (balanced?/tree (node-right t))
               (<= -1 (- (count-node/tree (node-left t)) (count-node/tree (node-right t))) 1))]))
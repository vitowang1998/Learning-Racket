#lang racket
(define-struct node (left right key))

;; checks if a tree is a full tree
;; O(n) where n is the number of nodes
;; full?/tree: tree -> boolean
(define (full?/tree t)
  
  ;; Count the number of nodes in a tree
  ;; Running time: O(n)
  ;; tree -> number
  (define (count-node/tree t)
    (cond
      [(empty? t) 0]
      [else (+ 1 (count-node/tree (node-left t)) (count-node/tree (node-right t)))]))
  
  ;; Get the height of a tree
  ;; O(n) = n
  ;; get-height/tree: tree -> number
  (define (get-height/tree t)
    (cond
      [(empty? t) 0]
      [else (+ 1 (max (get-height/tree (node-left t)) (get-height/tree (node-right t))))]))
  
  (cond
    [(empty? t) true]
    [(= (sub1 (expt 2 (get-height/tree t))) (count-node/tree t)) true]
    [else false]))

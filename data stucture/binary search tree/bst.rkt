#lang racket
(provide insert/bst leaf?/bst)

(define-struct node (left right key))

;; insert a number into a binary search tree
;; O(n) in worst case
;; O(log n) usually
;; insert/bst: bst + int -> bst
(define (insert/bst t n)
  (if (empty? t) (make-node empty empty n)
      ; else
      (let ([current (node-key t)])
        (cond
          [(= n current) t]
          [(< n current) (make-node (insert/bst (node-left t) n) (node-right t) current)]
          [else (make-node (node-left t) (insert/bst (node-right t) n) current)]))))

;; check if a node is a leaf of a bst
;; O(1)
;; leaf?/bst: node -> boolean
(define (leaf?/bst bst)
  (and (empty? (node-left bst))
       (empty? (node-right bst))))



;; (insert/bst): insert a number into a binary search tree
;; (leaf?/bst): 
;; ------
;; (delete)
;; (member?/bst)
;; (bst?)
;; (list->bst)
;; (bst->list)
;; (get-min/bst)
;; (get-max/bst)
;; (get-before/bst)
;; (get-after/bst)
;; (append/bst)
;; (difference/bst)


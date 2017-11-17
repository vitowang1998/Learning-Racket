#lang racket
(provide insert/bst leaf?/bst num-member?/bst)

(define-struct node (left right key))

;; ----------------------------------------------------------

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

;; ----------------------------------------------------------

;; check if a node is a leaf of a bst
;; O(1)
;; leaf?/bst: node -> boolean
(define (leaf?/bst bst)
  (and (empty? (node-left bst))
       (empty? (node-right bst))))

;; ----------------------------------------------------------

;; A function that checks if n is a member in a bst
;; member?/bst: num + bst -> boolean
;; O(log n)
(define (num-member?/bst n t)
  (if (empty? t) false
      ; else
      (let ([current (node-key t)])
        (cond
          [(= n current) true]
          [(< n current) (num-member?/bst n (node-left t))]
          [else (num-member?/bst n (node-right t))]))))

;; ----------------------------------------------------------


;; (insert/bst): insert a number into a binary search tree
;; (leaf?/bst): check if a node is a leaf of a bst
;; (num-member?/bst): check if a number is a member of a sbt.
;; ------
;; (delete)
;; (bst?)
;; (list->bst)
;; (bst->list)
;; (get-min/bst)
;; (get-max/bst)
;; (get-before/bst)
;; (get-after/bst)
;; (append/bst)
;; (difference/bst)


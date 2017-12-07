#lang racket

(define-struct node (left right key)#:transparent)

;; delete a value from a bst
;; O(log2 n), worst case O(n/2)
;; delete/bst: bst + number -> bst
(define (delete/bst t n)
  
  ;; check if a node is a leaf of a bst
  ;; O(1)
  ;; leaf?/bst: node -> boolean
  (define (leaf?/bst bst)
    (and (empty? (node-left bst))
         (empty? (node-right bst))))

  ;; removes the root of a bst, only used when we have located the value we want to delete
  ;; O(log2 n)
  ;; remove-root/bst: bst -> bst
  (define (remove-root/bst t)
    (cond
      [(empty? t) t]
      [(leaf?/bst t) empty]
      [(empty? (node-left t)) (node-right t)]
      [(empty? (node-right t)) (node-left t)]
      [else (make-node (node-left t) (remove-root/bst (node-right t)) (node-key t))]))
  
  (cond
    [(empty? t) empty]
    [(= n (node-key t)) (remove-root/bst t)]
    [(> n (node-key t)) (make-node (node-left t) (delete/bst (node-right t) n) (node-key t))]
    [else (make-node (delete/bst (node-left t) n) (node-right t) (node-key t))]))




;; another way to delete a node
(define (delete-bst t n)
  (cond
    [(empty? t) empty]
    [(= n (node-key t)) (combine-bst (node-left t) (node-right t))]
    [(> n (node-key t)) (make-node (node-left t) (delete-bst (node-right t) n) (node-key t))]
    [else (make-node (delete-bst (node-left t) n) (node-right t) (node-key t))]))


;; append two bsts together
;; O(n) where n is the size of t2
;; combine/bst: bst + bst -> bst    
(define (combine-bst t1 t2)
  (if (empty? t2) t1
      (combine-bst (combine-bst (insert-bst t1 (node-key t2)) (node-left t2)) (node-right t2))))
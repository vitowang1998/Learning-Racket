#lang racket
(define-struct node (left right key)#:transparent)

(define (insert/bst t n)
  (cond
    [(empty? t) (make-node empty empty n)]
    [(= n (node-key t)) t]
    [(< n (node-key t)) (make-node (insert/bst (node-left t) n) (node-right t) (node-key t))]
    [else (make-node (node-left t) (insert/bst (node-right t) n) (node-key t))]))


(define (delete/bst bst n)
  (cond
    [(empty? bst) empty]
    [(= n (node-key bst)) empty]
    [(> n (node-key bst)) (make-node (node-left bst) (delete/bst (node-right bst) n) (node-key bst))]
    [else (make-node (delete/bst (node-left bst) n) (node-right bst) (node-key bst))]))


(define test (insert/bst empty 2))
(define test2 (insert/bst (insert/bst test 12) 14))
(node-key test)
(delete/bst  test 2)
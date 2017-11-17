#lang racket
(define-struct node (left right key)#:transparent)


;; insert a number into a binary search tree
;; O(n) in worst case
;; O(log n) usually
;; insert/bst: bst + int -> bst
(define (insert2/bst t n)
  (if (empty? t) (make-node empty empty n)
      ; else
      (let ([current (node-key t)])
        (cond
          [(= n current) t]
          [(< n current) (make-node (insert2/bst (node-left t) n) (node-right t) current)]
          [else (make-node (node-left t) (insert2/bst (node-right t) n) current)]))))


;; Another way of implementing it
(define (insert/bst t n)
  (cond
    [(empty? t) (make-node empty empty n)]
    [(= n (node-key t)) t]
    [(< n (node-key t)) (make-node (insert/bst (node-left t) n) (node-right t) (node-key t))]
    [else (make-node (node-left t) (insert/bst (node-right t) n) (node-key t))]))


;; (define test (insert/bst empty 0))
;; (define test2 (insert/bst test 2))





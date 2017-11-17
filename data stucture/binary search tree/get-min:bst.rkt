#lang racket
(define-struct node (left right key))

;; A function that gets the minimum value of a bst
;; average O(log n)
;; get-min/bst: bst -> number
(define (get-min/bst t)
  (cond
    [(empty? t) (error 'get-min/bst "Expected a bst but given empty.")]
    [(number? t) (error 'get-min/bst "Expected a bst but given a number.")]
    [(empty? (node-left t)) (node-key t)]
    [else (get-min/bst (node-left t))]))

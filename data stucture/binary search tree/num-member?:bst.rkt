#lang racket
(define-struct node (left right key) #:transparent)

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



;; A more understandable version
(define (member? n t)
  (cond
    [(empty? t) false]
    [(= n (node-key t)) true]
    [(< n (node-key t)) (member? n (node-left t))]
    [else (member? n (node-right t))]))


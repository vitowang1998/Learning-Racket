#lang racket
(provide insert/bst
         leaf?/bst
         num-member?/bst
         get-min/bst
         full?/bst
         bst->list
         list->bst)

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

;; A function that gets the minimum value of a bst
;; average O(log n)
;; get-min/bst: bst -> number
(define (get-min/bst t)
  (cond
    [(empty? t) (error 'get-min/bst "Expected a bst but given empty.")]
    [(number? t) (error 'get-min/bst "Expected a bst but given a number.")]
    [(empty? (node-left t)) (node-key t)]
    [else (get-min/bst (node-left t))]))

;; --------------------------------------------------------------------

;; checks if a tree is a full tree
;; O(n) where n is the number of nodes
;; full?/tree: tree -> boolean
(define (full?/bst t)
  
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

;; -------------------------------------------------------------------------------------

;; converts a bst to a list
;; O(n) where n is the size of the tree
;; bst->list: bst -> list
(define (bst->list t)
  (cond
    [(empty? t) empty]
    [else (append (bst->list (node-left t)) (cons (node-key t) (bst->list (node-right t))))]))

;; ------------------------------------------------------------------------------------

;; this function converts a list to a bst
;; O(n) where n is the size of list
;; list->bst: list -> bst
(define (list->bst lst)
  (cond
    [(empty? lst) empty]
    [(= 1 (length lst)) (make-node empty empty (car lst))]
    [else (insert/bst (list->bst (cdr lst)) (car lst))]))



;; (insert/bst): insert a number into a binary search tree
;; (leaf?/bst): check if a node is a leaf of a bst
;; (num-member?/bst): check if a number is a member of a bst.
;; (get-min/bst): get the minimum of a bst.
;; (full?/bst): is a bst full?
;; (bst->list): converts a bst to a list
;; (list->bst): converts a list to a bst
;; ------
;; (delete)
;; (bst?)
;; (get-max/bst)
;; (get-before/bst)
;; (get-after/bst)
;; (append/bst)
;; (difference/bst)


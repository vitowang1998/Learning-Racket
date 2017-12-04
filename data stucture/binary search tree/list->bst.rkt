;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname list->bst2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right key))

(define (insert/bst t n)
  (cond
    [(empty? t) (make-node empty empty n)]
    [(= n (node-key t)) t]
    [(< n (node-key t)) (make-node (insert/bst (node-left t) n) (node-right t) (node-key t))]
    [else (make-node (node-left t) (insert/bst (node-right t) n) (node-key t))]))

;; this function converts a list to a bst
;; O(n) where n is the size of list
;; list->bst: list -> bst
(define (list->bst lst)
  (cond
    [(empty? lst) empty]
    [(= 1 (length lst)) (make-node empty empty (car lst))]
    [else (insert/bst (list->bst (cdr lst)) (car lst))]))


  
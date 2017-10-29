;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname create-linear-tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right))


;; A function 
;; O(n) where n is the number of nodes
;; number -> binary tree
(define (create-linear-tree n)
  (cond
    [(zero? n) empty]
    [(< n 3) (make-node empty (create-full-tree (sub1 n)))]
    [else (make-node (create-full-tree (sub1 n)) empty)]))




     
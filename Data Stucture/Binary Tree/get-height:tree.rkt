;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname tree-height) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right))



;; Get the height of a tree
;; O(n) = n
(define (get-height/tree t)
  (cond
    [(empty? t) 0]
    [else (+ 1 (max (get-height/tree (node-left t)) (get-height/tree (node-right t))))]))
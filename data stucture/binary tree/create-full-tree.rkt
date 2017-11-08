;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pow-n) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right))


;; Create a full tree with height h
;; O(2^n)
(define (create-full-tree h)
  (cond
    [(zero? h) empty]
    [else (make-node (create-full-tree (sub1 h)) (create-full-tree (sub1 h)))]))


;; height of tree    # of nodes
;;       0                0
;;       1                1
;;       2                3
;;       3                7
;;       4               15
;;       5               31
;;       6               63
;;      ...              ...
;;       n            (2^n - 1)



;; (time (create-full-tree 20))
;; (time (create-full-tree 21))
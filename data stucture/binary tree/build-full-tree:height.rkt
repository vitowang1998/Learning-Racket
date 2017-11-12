;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname build-full-tree:height) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right))


;; Create a full tree with height h
;; O(2^n)
(define (build-full-tree/height h)
  (cond
    [(zero? h) empty]
    [else (make-node (build-full-tree/height (sub1 h)) (build-full-tree/height (sub1 h)))]))


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


(build-full-tree/height 2)
;; (time (create-full-tree 21))
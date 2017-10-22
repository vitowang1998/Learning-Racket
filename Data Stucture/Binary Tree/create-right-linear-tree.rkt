;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname create-right-linear-tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right))


;; O(n) = 6n + 4 => O(n) = n
(define (create-right-linear-tree n)
  (cond
    [(zero? n) empty]
    [else (make-node empty (create-right-linear-tree (sub1 n)))]))
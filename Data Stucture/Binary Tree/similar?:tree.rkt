;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname similar?) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right))

;; Running time: O(7n) => O(n)
(define (similar?/tree a-node b-node)
  (cond
    [(and (empty? a-node) (empty? b-node)) true]
    [(and (empty? a-node) (node? b-node)) false]
    [(and (node? a-node) (empty? b-node)) false]
    [; Condition ↓
     (and (node? a-node) (node? b-node))
     ; Execute ↓
     (and (similar?/tree (node-left a-node) (node-left b-node))
          (similar?/tree (node-right a-node) (node-right b-node)))]))


(define x (make-node (make-node empty empty) (make-node (make-node empty empty) empty)))

(similar?/tree x empty)
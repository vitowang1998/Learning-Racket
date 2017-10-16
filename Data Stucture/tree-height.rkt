;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname tree-height) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Get the height of a tree
;; O(n) = n
(define (tree-height t)
  (cond
    [(empty? t) 0]
    [else (+ 1 (max (tree-height (node-left t)) (tree-height (node-right t))))]))
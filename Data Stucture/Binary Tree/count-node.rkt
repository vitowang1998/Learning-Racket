;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname tree-count-node) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Count the number of nodes in a tree
;;
(define (count-node t)
  (cond
    [(empty? t) 0]
    [else (+ 1 (count-node (node-left t)) (count-node (node-right t)))]))




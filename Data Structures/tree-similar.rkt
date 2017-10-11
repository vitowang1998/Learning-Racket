;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname tree-similar) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (tree-similar? a-node b-node)
  (cond
    [(and (empty? a-node) (empty? b-node)) true]
    [(and (empty? a-node) (node? b-node)) false]
    [(and (node? a-node) (empty? b-node)) false]
    [(and (node? a-node) (node? b-node))
     (and (tree-similar? (node-left a-node) (node-left b-node))
          (tree-similar? (node-right a-node) (node-right b-node)))]))
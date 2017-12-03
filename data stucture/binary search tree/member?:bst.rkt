;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname member?:bst) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (left right key))

;; is n a member of bst?
;; O(log2 n)
;; bst + n -> boolean
(define (member?/bst bst n)
  (if (empty? bst) false
      (let ([value (bst-node-val bst)])
        (cond
          [(= n value) true]
          [(< n value) (member?/bst (bst-node-left bst) n)]
          [(> n value) (member?/bst (bst-node-right bst) n)]))))
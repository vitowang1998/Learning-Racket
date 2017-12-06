;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname number-of-different-trees-with-n-nodes) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; number of dissimilar trees with n nodes
;;    n    # of dissimilar trees
;;    0              1
;;    1              1
;;    2              2
;;    3              5
;;    4              14
;;   ...            ...
;;    n     (2n)! / (n! * (n+1)!)

(define (fac n)
  (if (zero? n) 1
      (* n (fac (sub1 n)))))

(define (tree-count n)
  (/ (fac (* 2 n)) (* (fac (add1 n)) (fac n))))
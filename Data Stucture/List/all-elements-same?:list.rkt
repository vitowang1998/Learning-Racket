#lang racket

;; A shorter version to check if all the elements in a list are same
;; O(n)
;; the list must be len. > 1, must be list of numbers
(define (all-elements-same?/list lst)
  (apply = lst))



;; A function to check if all the elements in a list are same
;; O(n)
;; the list must be len. > 1, must be list of numbers
(define (all-elements-same?/list lst)
  (cond
    [(empty? lst) true] ; you can modify this by demands
    [(= 2 (length lst)) (= (car lst) (car (cdr lst)))] ; when the number of elements of list is 2, compare the elements
    [(= (car lst) (car (cdr lst))) (all-elements-same?/list (cdr lst))] ; if same, compare next
    [else false])) ; if the first two elem. in list are not same, false

(define la (list 1 2 3 4 5 6 7 8))
(define lb (list 1 3 4 5 2 4 4 4))
(define lc empty)
(define ld (list 1 1 1 1 1))
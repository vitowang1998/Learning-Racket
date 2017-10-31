;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname normal-reverse) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; A function that combines two lists together
;; O(n)
(define (append l1 l2)
  (cond
    [(empty? l1) empty]
    [else (cons (car l1) (append (cdr l1) l2))]))



;; A function that reverses the order of a list
;; O(n^2)
(define (reverse lst)
  (cond
    [(empty? lst) empty]
    [(cons (reverse (cdr lst)) (car lst))]))
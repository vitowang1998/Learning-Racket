;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname append:list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; A function that combines two lists together
;; O(n)
;; list, list -> list
(define (append/list l1 l2)
  (cond
    [(empty? l1) empty]
    [else (cons (car l1) (append/list (cdr l1) l2))]))

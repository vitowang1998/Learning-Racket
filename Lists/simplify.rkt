;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname simplify) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; simplify


;; This function will get rid of same items in a list
;; O(n^2)
(define (simplify lst)
  (cond
    [(empty? lst) empty]
    [(member (car lst) (cdr lst)) (simplify (cdr lst))]
    [else (cons (car lst) (simplify (cdr lst)))]))
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname take) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; O(n)
;; Take the first n terms in a list
;; list + n -> list
(define (take-first-n-terms/list lst n)
  (cond
    [(zero? n) empty]
    [else (cons (car lst) (take-first-n-terms/list (cdr lst) (sub1 n)))]))
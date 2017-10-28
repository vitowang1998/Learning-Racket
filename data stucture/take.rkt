;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname take) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; O(n)
(define (take lst n)
  (cond
    [(zero? n) empty]
    [else (cons (car lst) (take (cdr lst) (sub1 n)))]))
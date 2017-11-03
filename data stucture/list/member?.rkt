;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname member) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Member of list

;; A function to determine if e is in lst
;; O(n)
;; type + list -> bool
(define (member? e lst)
  (cond
    [(empty? lst) false]
    [(= e (car lst)) true]
    [else (member? e (cdr lst))]))
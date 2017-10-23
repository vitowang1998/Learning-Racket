;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname my-append) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Append

;; A function that combines two lists together
;; O(n) = (get-size-of-list l1) -> O(n) = n
(define (my-append l1 l2)
  (cond
    [(empty? l1) l2]
    [else (cons (car l1) (my-append (cdr l1) l2))]))



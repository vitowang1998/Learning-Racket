;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname get-size-of-list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; A function to get the size of a list
;; O(n) 
(define (getsize-list lst)
  (cond
    [(empty? lst) 0]
    [else (add1 (getsize-list (cdr lst)))]))

; T(n) = n + 1
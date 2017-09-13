;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname recursion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; This is the syntax for recursive arguments in Racket

; This is a recusive way of adding natural numbers up to integer "n".

(define (sumto n)
  (cond
    ((zero? n) 0)
    ((> n 0) (+ n (sumto (- n 1))))
    (else -1)))

(sumto 15)
(sumto 12)
(sumto 100)


 
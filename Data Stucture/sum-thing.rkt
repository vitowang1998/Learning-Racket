;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sum-thing) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; This is user-defined data structure
(define-struct thing (a b))



; Regardless of the conponents in thing structure, we will be able to calculate the sum of all components in it.
(define (sum-thing n)
  (cond
    [(number? n) n]
    [(and (number? (thing-a n)) (number? (thing-b n))) (+ (thing-a n) (thing-b n))]
    [(and (empty? (thing-a n)) (empty? (thing-b n))) 0]
    [(and (number? (thing-a n)) (empty? (thing-b n))) (thing-a n)]
    [(and (empty? (thing-a n)) (number? (thing-b n))) (thing-b n)]
    [true (+ (sum-thing (thing-a n)) (sum-thing (thing-b n)))]))
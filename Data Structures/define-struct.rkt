;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname define-struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Structure definition
(define-struct my-struct (x y z))


; Constructor
(make-my-struct 1 2 3)
(define x (make-my-struct 1 2 3))


; Selectors
(my-struct-x x)
(my-struct-y x)
(my-struct-z x)

; Modifications
(define (add100/my-struct lst)
  (make-my-struct (my-struct-x x) (my-struct-y x) (+ 100 (my-struct-z x))))

(add100/my-struct x)
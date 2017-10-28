;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |complex number|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; compound number
(define num 1+2i)

; Get the value of num
num

; test
(real? num)
(complex? num)

; Operations
(real-part num)
(imag-part num) ; Note that this function would return an integer
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |floor function|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; floor function

;; O(n) = 0
(floor 3.1)
(floor 4.0)
(floor 0)
(floor -1.5)  ; Note that the returned value of this operation is -2
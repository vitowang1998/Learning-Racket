;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname conditions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; This is the syntax for conditional arguments in Racket


;; O(n) = 1
(cond
  ((= 1 2) "1 = 2")
  ((= 2 2) "2 = 2")
  ((= 5 5) "5 = 5"))
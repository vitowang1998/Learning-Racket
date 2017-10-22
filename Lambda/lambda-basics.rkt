;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname lambda-basics) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Switch the mode to "Intermediate Student with lambda"

;; O(1)
(define (adder v1)
  (+ v1 v1))

;; Note that this function can also be expressed as
(lambda (v1) (+ v1 v1))  ; <- This whole thing is a function, so it outputs as a <procedure>

;; If we want to execute the lambda
((lambda (v1) (+ v1 v1)) 3)
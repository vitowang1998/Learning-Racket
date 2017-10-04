;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname data-definition) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Data definition
;; It is part of the design recipe of Racket

;; eg.
;; A "person" is a structure
;; (make-person symbol number symbol)
(define-struct person (name age post-code))


;; An example: Replacing 12-hour time system with 24-hour time system, and vice versa
;; time is a structure
;; (make-time number number number symbol)
(define-struct time (hour minute second am/pm))

(define test-1 (make-time 3 57 23 'am))
(define test-2 (make-time 3 57 23 'pm))

(define-struct 24-time (hour minute second))

(define (standarize-time my-time)
  (cond
    ;; This is the directive of comparing symbols
    ;; (eq? symbol symbol)
    [(eq? 'am (time-am/pm my-time)) (make-24-time (time-hour my-time)
                                                (time-minute my-time)
                                                (time-second my-time))]
                                                
    [true (make-24-time (+ 12 (time-hour my-time))
                        (time-minute my-time)
                        (time-second my-time))]))

;; test
(standarize-time test-1)
(standarize-time test-2)

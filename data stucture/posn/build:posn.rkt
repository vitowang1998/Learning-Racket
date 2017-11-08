;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname build:posn) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; This function builds posn from m to n
;; build/posn: int + int -> posn
;; O(m-n)
(define (build/posn m n)
  (cond
    [(= m n) n]
    [else (make-posn m (build/posn (add1 m) n))]))



;; This function builds posn from m to n from another direction
;; build/posn: int + int -> posn
;; O(m-n)
(define (build/posn-2 m n)
  (cond
    [(= m n) n]
    [else (make-posn (build/posn-2 m (sub1 n)) n)]))

(build/posn 3 8)
(build/posn-2 3 8)

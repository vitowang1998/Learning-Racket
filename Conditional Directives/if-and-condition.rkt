;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname if&condition) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; There are actually two ways of doint it.
;; Obviously, we can use the built-in min and max function to eliminate the largest and smallest term



;; Condition is easier to read
;; if has less code.


;; Condition:

#|
(define (median a b c)
  (cond
    ((<= a b) (cond
                ((<= b c) b)
                ((> b c) (cond
                           ((<= a c) c)
                           (else a)))))
    (else (if (>= b c) b (if (<= a c) a c)))))

|#

;; If:

;; O(n) = 1
(define (median a b c)
  (if (<= a b) (if (<= b c) b (if (<= a c) c a)) (if (>= b c) b (if (<= a c) a c))))
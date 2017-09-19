;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2^n_checker) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Test if a positive integer is an exponent of 2

; If n < 1, then n is not an exponent of 2
(define (test1 n)
  (if (> n 1) true false))

; Used to test n
(define (test2 n)
  (cond
    ; If n = 1, we will set n to be a exponent of 2 at "ifIsExpoOf2"
    ; This condition is used for recursions
    ((= (/ n 2) 1) true)
    ; If n < 1, then n is not an exponent of 2
    ((< (/ n 2) 1) false)
    ; Else, we use recursion to divide n by 2
    ; If n is an exponent of 2, n will eventually be 1
    (else (test2 (/ n 2)))))
    


(define (ifIsExpoOf2 n)
  (cond
    ; If n = 1, then n is a component of 2
    ((= n 1) true)
    ; If n != 1, then we need to do test1 to see if n qualifies
    ; If n qualifies, we do test2 on n to see if n is an exponent of 2
    ; If n fails test1, it means that n cannot be an exponent of 2, then print "false"
    (else (if (test1 n) (test2 n) false))))


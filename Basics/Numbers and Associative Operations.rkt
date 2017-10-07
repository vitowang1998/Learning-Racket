; Declare the language that we are using
#lang racket


; Comments start with a semicolon

#|
Comments
#|
Comments
|#
Comments
|#




; Numbers
; Positive integer
123

; Negative integer
-0.5

; Fraction (Rational Number)
22/3

; Inexact representation of a real number
#i3.1415926535712345678910

; b stands for binary
; (2^2 * 1) + (2^1 * 1) + (2^0 * 1) = 4 + 2 + 1 = 7
#b111

; o stands for octonary
; (8^2 * 2) + (8^1 * 3) + (8^0 * 1) = 128 + 24 + 1 = 153
#o231

; Operations for numbers
(printf "\nOperations for Numbers\n")
(+ 5 12)
(- 4 9)
(* 3 4)
(/ 3 6)

;Scheme computes EXACT answers
(/ 15 7)

; Scheme expression has the shape of (operation A B)
; A and B are evaluated first
(* (+ 5 3) (- 5 3))

(sqrt 15)
; like the function "pow" in C++
(expt 15 2)
; like the function "mod" in Pascal
; % in C++
(remainder 15 6)
; Natural lograrithm of A
(log 12)
; Trigonometric functions 
(sin 12)
(cos 12)
(tan 12)

; If there is one inexact number in the calculation, the result will remain inexact
(- #i1.0 #i0.9)
(- #i1000.0 #i999.9)
; The decimal representation of irrational numbers are infinitely long, while the computer has a finite size in terms of memory
; As a result, it can literally only represent a portion of these values


; DrScheme deals with numbers (even if they might be decimals) as fractions
; When DrScheme displays 1.38 or 15/11 as the answers, they are actually the results from exact-number-computation
; Only numbers start with prefix #i will be dealed with as INEXACT numbers


; Exercise 1
(sqr 16)
(sin 15)
(max 14 13)


; Exercise 2
(sqrt 4)
(sqrt 2)
(sqrt -1)
; Radians
(tan 90)
(tan (* 2 pi))
(sin 0)
(sin (/ pi 2))
(sin pi)
; Interestingly, the value of (sin pi) and (tan pi), (tan 2pi) should be 0.
; However, DrRacket displays very small number in natural logrithmic form instead of 0.

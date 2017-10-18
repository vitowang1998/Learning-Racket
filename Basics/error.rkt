;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname error) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; error



;; O(n) = 1
(define (sampleFunction inputNum)
  (cond
    [(number? inputNum) inputNum]
    [else (error 'sampleFunction "Number expected")]))

(sampleFunction 1)



;; Error
(sampleFunction "HelloWorld")
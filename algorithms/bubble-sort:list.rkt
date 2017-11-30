#lang racket
;; Bubble sort
(define (bubble-up L)
    (if (null? (cdr L))   
        L    
        (if (< (car L) (cadr L))   
            (cons (car L) (bubble-up (cdr L)))   
            (cons (cadr L) (bubble-up (cons (car L) (cddr L)))))))

(define (bubble-sort-aux N L)    
    (cond ((= N 1) (bubble-up L))   
          (else (bubble-sort-aux (- N 1) (bubble-up L)))))
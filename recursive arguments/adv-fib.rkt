#lang racket
(define (fib n)
  (cond
    ((= n 0) 0)
    ((= n 1) 1)
    (else (+ (fib (- n 1)) (fib (- n 2))))))


(define (even-fib->list n)
  (define (cdr-fib k)
    (if (> k n) empty
        ; else
        (let ([current-fib (fib k)]) ; declare a local variable since (fib k) is very time-consuming
          (if (even? current-fib)
              (cons current-fib (cdr-fib (add1 k)))
              (cdr-fib (add1 k))))))
  (cdr-fib 1))



;; Combine the first n Fibonacci number into a list
(define (odd-fib->list n)
  (define (cdr-fib k)
    (if (> k n)
        empty ; end the list
        (let [(fib-num (fib k))]
          (if (odd? fib-num)
              (cons fib-num (cdr-fib (add1 k)))
              (cdr-fib (add1 k))))))
  (cdr-fib 1))




(define (fib->list n)
  (define (calc-fib k)
    (let [(current-fib (fib k))]
      (if (= k n)
          ; then
          (list current-fib) ; special case, note that this is the cdr of the resultant list
          ; else
          (cons (fib k) (calc-fib (add1 k))))))
  (calc-fib 1))
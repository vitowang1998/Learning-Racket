#lang lazy
;; This file examines and experiments the idea of Y commbinator
;; Basically, Y combinator implements recursion in a special case where recursion is not permitted.
;; In other words, the essence of Y combinator converts the long recursive function to a huge line.

;; sample 1
;; recursive function
(define fac
  (λ (x)
    (if (zero? x) 1 
        (* x (fac (sub1 x))))))

;; make it unrecursive
(define Fact
  (λ (fact)
    (λ (x)
      (if (zero? x) 1
          (* x (fact (sub1 x)))))))


;; sample 2
;; recursive function

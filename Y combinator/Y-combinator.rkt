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


;; use Y-combinator
(define Y
  (λ (f)
    ((λ(x)
       (f (x x)))
     (λ(x)
       (f (x x))))))

(define fac-yc
  (Y
   (λ (fact-yc)
     (λ (n)
       (if (zero? n) 1
           (* n (fact-yc (sub1 n))))))))


;; sample 2
;; recursive function


;; self application in Lambda calculus
;; loop = (λx.x.x) (λx.x.x) ; apply this function to itself

; another example
(define (rec f)
  (f (rec f)))

; if we run it
;; (rec f) = (f (f (f (f (rec f)))))


;;
(define loop
  (rec loop))
;;


;; Y combinator


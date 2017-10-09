;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname get-the-tree-size) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; check the size of a bag

(define-struct pair (left right))


(define a (make-pair 1 2))
(define b (make-pair (make-pair 1 2) (make-pair 3 4)))

(define c (make-pair (make-pair 1 2) (make-pair 3 (make-pair 3 5))))

(define d (make-pair (make-pair 1 2) (make-pair (make-pair 3 213) 213)))

;; 
;;(define d (make-pair (make-pair 1 2) (make-pair (make-pair 32 123) 213)))


;; Restriction: Every pair must have a number as its left element
(define (pair-size my-pair)
  (cond
    [(and (number? (pair-left my-pair)) (number? (pair-right my-pair))) 2]
    [(and (pair? (pair-left my-pair) )
          (pair? (pair-right my-pair)))
     (+ (pair-size (pair-left my-pair)) (pair-size (pair-right my-pair)))]
    [(number? (pair-left my-pair)) (add1 (pair-size (pair-right my-pair)))]
    [else (add1 (pair-size (pair-right my-pair)))]))


(pair-size a)
(pair-size b)
(pair-size c)



;; General version

(define (check-size my-pair)
  (cond
    [(number? my-pair) 1]
    [else (+ (check-size (pair-left my-pair)) (check-size (pair-right my-pair)))]))


(check-size a)
(check-size b)
(check-size c)
(check-size d)




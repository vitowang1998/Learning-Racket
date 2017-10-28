;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname get-size:posn) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; check the size of a bag



(define a (make-posn 1 2))
(define b (make-posn (make-posn 1 2) (make-posn 3 4)))

(define c (make-posn (make-posn 1 2) (make-posn 3 (make-posn 3 5))))

(define d (make-posn (make-posn 1 2) (make-posn (make-posn 3 213) 213)))




;; Restriction: Every pair must have a number as its left element
;; O(n)
;; posn -> number
(define (posn-size my-posn)
  (cond
    [(and (number? (posn-x my-posn)) (number? (posn-y my-posn))) 2]
    [(and (posn? (posn-x my-posn) )
          (posn? (posn-y my-posn)))
     (+ (posn-size (posn-x my-posn)) (posn-size (posn-y my-posn)))]
    [(number? (posn-x my-posn)) (add1 (posn-size (posn-y my-posn)))]
    [else (add1 (posn-size (posn-y my-posn)))]))


(posn-size a)
(posn-size b)
(posn-size c)



;; General version
;; O(n)
;; posn -> number
(define (get-size/posn my-posn)
  (cond
    [(number? my-posn) 1]
    [else (+ (get-size/posn (posn-x my-posn)) (get-size/posn (posn-y my-posn)))]))

(get-size/posn a)
(get-size/posn b)
(get-size/posn c)
(get-size/posn d)




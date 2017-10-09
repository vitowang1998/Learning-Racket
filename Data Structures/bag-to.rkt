;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; bag-to

(define (bag-to n)
  (cond
    [(= n 1) n]
    [else (make-posn n (bag-to (sub1 n)))]))


(define (bag-to-sequential n)
  (cond
    [(= n 1) n]
    [else (make-posn (bag-to-sequential (sub1 n)) n)]))


(bag-to 4)

(bag-to-sequential 4)
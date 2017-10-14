;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname abs-max) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; yields the item with maximum absolute value

(define (abs-max l)
  (cond
    [(= 1 (length l)) (abs (car l))]
    [else (if (< (abs (car l)) (abs (abs-max (cdr l))))
              (abs-max (cdr l))
              (car l))]))


(abs-max (list -99 -1 1 2 3 4 5 -6))

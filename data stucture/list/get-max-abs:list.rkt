;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname abs-max:list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; yields the item with maximum absolute value
;; O(n^2)
(define (get-max-abs/list l)
  (cond
    [(empty? l) (error 'abs-max "A non-empty list expected")]
    [(= 1 (length l)) (car l)]
    [else (if (< (abs (car l)) (abs (get-max-abs/list (cdr l)))) ; if the absolute value of the first term is smaller
              (get-max-abs/list (cdr l)) ; get the max abosulte value of the rest of the list
              (car l))])) ; return the first term


; (abs-max (list))



(abs-max (list -99 -1 1 2 3 4 5 -6))

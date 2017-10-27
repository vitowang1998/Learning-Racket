;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; We use structure when we know the number of pieces of data we need to combine.
;; However, when we don't know the number of data we need to combine, we use a list.

;; A list can have an arbitary length.
;; It has a finite, but arbitary length.


;; Empty is also a list
empty
(list? empty)
'-----------------------------------------------


;; We use directive "cons" to construct a list
;; The second argument of cons has to be a list so
;; (cons 1 2) or (cons 1 (cons 2 3)) won't work


;; but
(cons 1 (cons 2 empty))
;; works

;; Get the first variable
(first (cons 1 (cons 2 empty)))
(car (cons 1 (cons 2 empty)))


;;get the rest variable(s)
(rest (cons 1 (cons 2 empty)))
(cdr (cons 1 (cons 2 empty)))


'-----------------------------------------------

;; Define a list
(define my-list (list 1 3 5 7 9))

;; We can check if this list is empty
(empty? my-list)

;; Get the first variable
(first my-list)
(car my-list)

;; Get the rest of variable(s)
(rest my-list)
(cdr my-list)

my-list

'---------------------------------------------------------------

(list 1 2 3 4 5)



;; Create a function that adds up 3 numbers in a list
(define (addNum l)
  (+ (first l) (first (rest l)) (first (rest (rest l)))))

(addNum (list 1 2 3))
(addNum (list 3 5 7))



;; ex2
;; test if the content of symbol is a correct one
(define ex2 (list 'right 'wrong))

(define (test l)
  (cond
   [(eq? (first l) 'right) "The first symbol is right"]
   [(eq? (rest l) 'right) "The second symbol is right"]))
                             
(test ex2)
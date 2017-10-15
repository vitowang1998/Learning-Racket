;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname template) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; template


;; Suppose we have a structure like this.
(define-struct time (hour minute second am/pm))



;; And a process like this
#|
(define (standarize-time my-time randomNumX)
  (cond
    ;; This is the directive of comparing symbols
    ;; (eq? symbol symbol)
    [(eq? 'am (time-am/pm my-time)) (make-24-time (time-hour my-time)
                                                (time-minute my-time)
                                                (time-second my-time))]
                                                
    [true (make-24-time (+ 12 (time-hour my-time))
                        (time-minute my-time)
                        (time-second my-time))]))

                                                     |#



;; We can create a template like this
;; process-time time number
(define (standarize-time my-time randomNumX)
  (cond
    ;; This is the directive of comparing symbols
    ;; (eq? symbol symbol)
    [(eq? 'am (time-am/pm my-time)) (make-24-time (time-hour my-time)
                                                (time-minute my-time)
                                                (time-second my-time))]
                                                
    [true (make-24-time (+ 12 (time-hour my-time))
                        (time-minute my-time)
                        (time-second my-time))]))







;; time: number number number

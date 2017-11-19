#lang racket

;; apply fn to each member in the stream and cons them in a new stream
;; O(n) where n is the size of stream
;; Map-Stream: function + stream -> stream
(define (Map-Stream fn s)
  (if (Empty-Stream? s)
      ; then
      Empty-Stream
      ; else
      (Cons-Stream (fn (Car-Stream s)) (Map-Stream fn (Cdr-Stream s)))))
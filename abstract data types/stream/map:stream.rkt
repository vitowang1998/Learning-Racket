#lang racket

;; apply fn to each member in the stream and cons them in a new stream
;; O(n) where n is the size of stream
;; map/stream: function + stream -> stream
(define (map/stream fn s)
  (if (empty-stream? s)
      ; then
      empty-stream
      ; else
      (cons-stream (fn (car-stream s)) (map/stream fn (cdr-stream s)))))
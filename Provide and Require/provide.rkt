#lang racket

(define (demo x)
  x)

;; This function allows x to be invoked by outside Racket files.
(provide demo)
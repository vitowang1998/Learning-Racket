#lang racket


;; (build-list n f): build a list with n elemenets (list (f 0) (f 1) ... (f (n-1) (f n))
;; should be O(n)
;; integer + function -> list
(build-list 100 values)

(build-list 100 add1)

(build-list 100 (λ (x) (sqr x)))

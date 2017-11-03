#lang racket
(list (λ (x) (add1 x)) 15)
((car (list (λ (x) (add1 x)) 15)) (cadr (list (λ (x) (add1 x)) 15)))
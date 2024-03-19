#lang racket


(define (plus1 x) (+ x 1))



(define (f g) (g 2))


(f (plus1 2))
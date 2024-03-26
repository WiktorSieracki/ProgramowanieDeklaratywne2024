#lang racket

(define (f g) (g 2))

(define (square x) (* x x))


(f square)

(f (lambda (z) (+ z (* 3 z))))


; (f f)


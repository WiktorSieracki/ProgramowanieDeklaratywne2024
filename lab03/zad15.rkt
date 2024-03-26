#lang racket


(define (root f a b)
    (cond 
    [(eq? (* (quotient (+ a b) 2) (quotient (+ a b) 2)) f) (quotient (+ a b) 2)]
    [(eq? (- b a) 1) (/ (+ a b) 2)]
    [(< (* (quotient (+ a b) 2) (quotient (+ a b) 2)) f) (root f (quotient (+ a b) 2) b)]
    [(> (* (quotient (+ a b) 2) (quotient (+ a b) 2)) f) (root f a (quotient (+ a b) 2))]
    )
)

(root 9 0 10)
(root 8 0 10)
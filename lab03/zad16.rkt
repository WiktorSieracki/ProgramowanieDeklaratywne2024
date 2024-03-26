#lang racket

(define (iter f n)
    (cond
    [(eq? n 0) 1]
    [else (* f (iter f (- n 1)))]
    )
)

(iter 2 5)
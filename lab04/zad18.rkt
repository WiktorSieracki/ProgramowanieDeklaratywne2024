#lang racket

(define (sqare-list l)
    (cond
    [(null? l) `()]
    [else (cons (* (car l) (car l)) (sqare-list (cdr l)))]
    )
)
(sqare-list `(1 2 3 4 5))

(define (mapf f l)
    (cond
    [(null? l) `()]
    [else (cons (f (car l)) (mapf f (cdr l)))]
    )
)
(mapf (lambda (x) (+ x 10)) `(1 2 3 4 5))

(define (filter pred l)
    (cond
    [(null? l) `()]
    [(pred (car l)) (cons (car l) (filter pred (cdr l)))]
    [else (filter pred (cdr l))]
    )
)
(filter (lambda (x) (> x 3)) `(1 2 3 4 5 6))
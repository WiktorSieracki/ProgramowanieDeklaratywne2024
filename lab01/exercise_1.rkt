#lang racket


(define (new.< x y)
    (< x y))

(new.< 1 2)

(define (new.> x y)
    (> x y))

(new.> 2 1)

(define (new.= x y)
    (= x y))

(new.= 1 1)

(define (new.<= x y)
    (<= x y))

(new.<= 1 2)

(define (new.>= x y)
    (>= x y))

(new.>= 2 1)

(define (new.<> x y)
    (not (= x y)))

(new.<> 1 2)
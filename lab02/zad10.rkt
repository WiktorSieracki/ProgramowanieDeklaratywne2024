#lang racket


(define (product term next a b)
    (if (> a b)
        1
        (* (term a)
             (product term next (next a) b))))

(define (silnia n)
    (define (identity x) x)
    (define (inc x) (+ x 1))
    (product identity inc 1 n))

(silnia 3)



(define (equation n)
    (/ (- (* (+ 1 (* 2 n)) (+ 1 (* 2 n))) 1) (* (+ 1 (* 2 n)) (+ 1 (* 2 n))))
)


(define (pi)
    (define (term n)
        (if (= n 0)
            1
            (equation n)))
    (define (next n)
        (- n 1))
    (* 4 (product term next 1000 0))
)

(pi)
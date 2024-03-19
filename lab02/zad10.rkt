#lang racket


(define (product term next a b)
    (if (> a b)
        1
        (* (term a)
             (product term next (next a) b))))

(define (silnia n)
    (define (term x) x)
    (define (next x) (+ x 1))
    (product term next 1 n))

(silnia 5)



(define (approx-pi n)
  (define (term x)
    (if (even? x)
        (* (exact->inexact (+ x 2)) (exact->inexact (/ 1 (+ x 1))))
        (* (exact->inexact (+ x 1)) (exact->inexact (/ 1 (+ x 2))))))
  (define (next x) (+ x 1))
  (* 4 (product term next 1 n)))

(approx-pi 1000)
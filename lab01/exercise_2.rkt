#lang racket

(define (nwd a b)
    (if (= b 0)
            a
            (nwd b (remainder a b))))

(define (nww a b)
    (/ (* a b) (nwd a b)))


(nwd 12 8)
(nww 12 8)

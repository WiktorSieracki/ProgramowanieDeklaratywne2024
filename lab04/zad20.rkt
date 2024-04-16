#lang racket

(define (wymierna a b)
    (cond
    [(not (eq? b 0)) (list a b)]
    [else (error "Mianownik nie może być zerem")]
    )
)
(wymierna 4 5)

(define (pomnozWymierne w1 w2)
    (cond
    [(or (eq? (car w1) 0) (eq? (car w2) 0)) 0]
    [else (list (* (car w1) (car w2)) (* (cadr w1) (cadr w2)))]
    )
)
(pomnozWymierne (wymierna 4 5) (wymierna 1 2))

(define (podzielWymierne w1 w2)
    (cond
    [(or (eq? (car w1) 0) (eq? (car w2) 0)) 0]
    [else (list (* (car w1) (cadr w2)) (* (cadr w1) (car w2)))]
    )
)
(podzielWymierne (wymierna 4 5) (wymierna 1 2))

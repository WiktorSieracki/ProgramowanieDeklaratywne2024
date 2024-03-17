#lang racket

(define (exp b e)
  (cond
    [(zero? e) 1]
    [(even? e) (square (exp b (/ e 2)))]
    [else (* b (exp b (- e 1)))]
  )
)

(define (exp_acc b e)
  (define (helper b e acc)
    (cond
      [(zero? e) acc]
      [(even? e) (helper (square b) (/ e 2) acc)]
      [else (helper b (- e 1) (* acc b))]
    )
  )
  (helper b e 1))

(define (square x) (* x x))
(define (even? n) (= (remainder n 2) 0))


(exp_acc 2 6)
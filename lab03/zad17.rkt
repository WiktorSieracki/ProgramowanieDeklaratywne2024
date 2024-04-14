#lang racket


(define (myAppend l m)
    (cond
    [(null? l) m]
    [else (cons (car l) (myAppend (cdr l) m))]
    )
)
(myAppend '(1 2 3) `(4 5 6))


(define (myLast l)
    (cond
    [(null? (cdr l)) (car l)]
    [else (myLast (cdr l))]
    )
)
(myLast `(1 2 3 4 5 6))

(define (myReverse l)
    (cond
    [(null? l) `()]
    [else (myAppend (myReverse (cdr l)) (list (car l)))]
    )
)
(myReverse `(1 2 3 4 5 6))

(define (delete x l)
    (cond
    [(eq? (car l) x) (cdr l)]
    [else (cons (car l) (delete x (cdr l)))]
    )
)
(delete 5 `(1 2 3 4 5 6))

(define (pairing l1 l2)
    (cond
    [(null? l1) `()]
    [else (cons (list (car l1) (car l2)) (pairing (cdr l1) (cdr l2)))]
    )
)
(pairing `(1 2 3) `(a b c)) ; `((1.a) (2.b) (3.c))

(define (split x l)
  (define (helper l l1 l2)
    (cond
      [(null? l) (list l1 l2)]
      [(< (car l) x) (helper (cdr l) (cons (car l) l1) l2)]
      [else (helper (cdr l) l1 (cons (car l) l2))]))
  (helper l '() '()))
(split 5 `(1 2 3 4 5 6 7 8 9)) ; `((1 2 3 4) (6 7 8 9))
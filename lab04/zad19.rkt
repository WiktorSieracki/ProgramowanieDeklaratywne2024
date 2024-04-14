#lang racket


; `(2 (3 () (4 () ())) (1 () ()))


(define (memberTree? element tree)
    (cond
    [(null? tree) #f]
    [(eq? element (car tree)) #t]
    [else (memberTree? element (cdr tree))]
    )
)

(memberTree? 1 `(2 (3 () (4 () ())) (1 () ())))
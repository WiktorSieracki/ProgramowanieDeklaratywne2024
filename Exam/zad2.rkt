#lang racket

(define (filter pred l)
    (if (null? l)
    `()
        (if (pred (car l))
            (cons (car l) (filter pred (cdr l)))
            (filter pred (cdr l))
        )
    )
)

(filter list? `((4 3) 7 (1 2 3) 10))


(define (inorder tree)
    (cond
    [(null? tree) `()]
    [else (append (inorder (cadr tree)) (cons (car tree) (inorder (caddr tree))))]
    )
)

(inorder `(1 (2 (4 () ()) (5 () ())) (3 () (6 () ()))))

; 4 2 5 1 3 6
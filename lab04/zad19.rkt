#lang racket




(define (memberTree? element tree)
    (cond
    [(null? tree) #f]
    [(eq? element (car tree)) #t]
    [(list? (car tree)) (or (memberTree? element (car tree)) (memberTree? element (cdr tree)))]
    [else (memberTree? element (cdr tree))]
    )
)
(memberTree? 3 `(2 (3 () (4 () ())) (1 () ())))

(define (sumTree tree)
    (cond
    [(eq? tree `()) 0]
    [(list? (car tree)) (+ (sumTree (car tree)) (sumTree (cdr tree)))]
    [else (+ (sumTree (cdr tree)) (car tree))]
    )
)
(sumTree `(2 (3 () (4 () ())) (1 () ())))

(define (inorder tree)
    (cond
    [(null? tree) `()]
    [else (append (inorder (cadr tree)) (cons (car tree) (inorder (caddr tree))))]
    )
)
(inorder `(2 (3 () (4 () ())) (1 () ())))

(define (mapTree f tree)
    (cond
    [(null? tree) `()]
    [(list? (car tree)) (cons (mapTree f (car tree)) (mapTree f (cdr tree)))]
    [else (cons (f (car tree)) (mapTree f (cdr tree)))]
    )
)
(mapTree (lambda (x) (+ 10 x)) `(2 (3 () (4 () ())) (1 () ())))

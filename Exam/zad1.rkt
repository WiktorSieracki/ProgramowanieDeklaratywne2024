#lang racket

(define (delete x l)
  (if (null? l) 
      '()
      (if (eq? x (car l)) 
          (delete x (cdr l))
          (cons (car l) (delete x (cdr l)))
      )
  )
)

(delete 4 '(1 2 3 4))

(define (count x l)
    (if (null? l)
        0
        (if (eq? x (car l))
            (+ 1 (count x (cdr l)))
            (count x (cdr l)))))

(count 2 `(1 2 3 4 2 1 2))
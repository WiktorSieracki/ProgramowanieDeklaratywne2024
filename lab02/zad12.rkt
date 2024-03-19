#lang racket

(define (filter-accumulate combiner null-value term a next b pred)
    (if (> a b)
        null-value
        (if (pred a)
            (combiner (term a) (filter-accumulate combiner null-value term (next a) next b pred))
            (filter-accumulate combiner null-value term (next a) next b pred))))
                


(define (is_prime n)
    (define (iter i)
        (cond 
            ((> i (sqrt n)) #t)
            ((= (remainder n i) 0) #f)
            (else (iter (+ i 1)))))
    (iter 2))

(filter-accumulate + 0 (lambda (x) x) 1 (lambda (x) (+ x 1)) 7 (lambda (x) (is_prime x)))
; 1 + 2 + 3 + 5 + 7 = 18

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(filter-accumulate * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) 10 (lambda (x) (= 1 (gcd x 10))))




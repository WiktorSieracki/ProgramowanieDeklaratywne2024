#lang racket


(define (fibonacci n)
 (if (= n 0)
    0
    (if (= n 1)
        1
        (if (= n 2)
            1
            (+ (fibonacci (- n 2)) (fibonacci (- n 1)))))))

(define (fibonacci_acc n)
  (define (helper n acc1 acc2)
    (if (= 0 n)
        acc1
        (helper (- n 1) acc2 (+ acc1 acc2))))
  (helper n 0 1))


(fibonacci_acc 4)
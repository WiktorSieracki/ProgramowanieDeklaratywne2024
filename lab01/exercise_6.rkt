#lang racket



(define (factorial_rec n)
    (if (not (= n 0))
        (* n (factorial_rec (- n 1)))
        1))



(define (factorial_help n i acc)
      (if (< n i)
          acc
          (factorial_help n (+ i 1) (* i acc))))

   (define (factorial n)
      (factorial_help n 1 1))


(factorial 40000)
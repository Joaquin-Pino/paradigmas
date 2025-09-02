#lang racket

; Exercise 2.19: sicp
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination
                 coin-values))
            (cc (- amount
                   (first-denomination
                    coin-values))
                coin-values)))))

(define (no-more? lista)
  (null? lista))

(define (first-denomination lista)
  (car lista))

(define (except-first-denomination lista)
  (cdr lista))

(define us-coins '(50 25 10 5 1))
(define us-coins2 '(10 5 1 25 50))
(cc 100 us-coins)
(cc 100 us-coins2)
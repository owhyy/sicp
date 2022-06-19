#lang racket

(define (square x)
  (* x x))

(define (square-list-first-implementation lon)
  (if (empty? lon)
    empty
    (cons (square (car lon))
          (square-list-first-implementation (cdr lon)))))

(define (square-list-second-implementation lon)
  (map square lon))

(provide (all-defined-out))

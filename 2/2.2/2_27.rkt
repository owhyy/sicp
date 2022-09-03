#lang racket

(define (deep-reverse loe)
  (define (loop acc loe)
    (cond
      [(empty? loe) acc]
      [(list? (car loe)) (loop (cons (deep-reverse (car loe)) acc) (cdr loe))]
      [else (loop (cons (car loe) acc) (cdr loe))]))
  (loop empty loe))

(provide (all-defined-out))

#lang racket

(define (reverse loe)
  (define (loop acc loe)
    (if (empty? loe)
      acc
      (loop (cons (car loe) acc)
            (cdr loe))))
  (loop empty loe))

(provide (all-defined-out))

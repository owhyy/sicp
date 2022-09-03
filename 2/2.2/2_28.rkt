#lang racket

(define (fringe x)
  (cond
    [(empty? x) null]
    [(list? (car x)) (append (fringe (car x)) (fringe (cdr x)))]
    [else (cons (car x) (fringe (cdr x)))]))

(provide (all-defined-out))

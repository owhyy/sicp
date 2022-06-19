#lang racket

(define (same-parity h . t)
  (cons h (if (odd? h) (filter odd? t) (filter even? t))))

(provide (all-defined-out))

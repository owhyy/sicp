#lang racket

(require "2_7.rkt")

(define (width-interval i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(provide (all-defined-out))

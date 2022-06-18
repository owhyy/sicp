#lang racket

(require "2_7.rkt")

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y)) (- (upper-bound x) (upper-bound y))))

(provide (all-defined-out))

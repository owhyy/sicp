#lang racket

(require "2_7.rkt")

(define (div-spans-zero x y)
  (if (or (zero? (upper-bound y))
          (zero? (lower-bound y))
          (zero? (upper-bound x))
          (zero? (lower-bound x)))
      (error "interval spans zero: DIV-INTERVAL")
      (mul-interval x (make-interval (/ 1.0 (lower-bound y)) (/ 1.0 (upper-bound y))))))

(provide (all-defined-out))

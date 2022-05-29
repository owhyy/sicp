#lang racket

(require "2_7.rkt")

(define (make-center-percent c p)
  (if (or (< p 1) (> p 100))
      (error "percentage must be between 0 and 100: MAKE-CENTER-PERCENT")
      (make-interval (- c (/ c p)) (+ c (/ c p)))))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))
(define (percent i)
  (* 2 (/ (center i) (- (upper-bound i) (lower-bound i)))))

(provide (all-defined-out))

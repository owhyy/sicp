#lang racket
(require rackunit
         "2_2.rkt")

(define test-seg0 (make-segment (make-point 0 0) (make-point 0 0)))

(define test-seg1 (make-segment (make-point 0 0) (make-point 6 6)))

(define segment-tests
  (test-suite "Tests for segment-related procedures"
              (check-equal? (midpoint-segment test-seg0) (make-point 0 0))
              (check-equal? (midpoint-segment test-seg1) (make-point 3 3))))

(require rackunit/text-ui)
(run-tests segment-tests)

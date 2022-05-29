#lang racket
(require rackunit
         "2_1.rkt")

(define make-rat-tests
  (test-suite
    "Tests for make-rat"
    (check-equal? (make-rat 3 5) (cons 3 5) "Both positive")
    (check-equal? (make-rat -3 5) (cons -3 5) "Numerator negative, denominator positive")
    (check-equal? (make-rat 3 -5) (cons -3 5) "Denominator negative, numerator positive")
    (check-equal? (make-rat -3 -5) (cons 3 5) "Both negative")))

(require rackunit/text-ui)
(run-tests make-rat-tests)

#lang racket
(require rackunit
         "2_18.rkt")

(define reverse-tests
  (test-suite "Tests for reverse"
              (check-equal? (reverse (list 3 5 6 8)) (list 8 6 5 3) "Base test")
              (check-equal? (reverse (list 1 1 1 1)) (list 1 1 1 1) "All elements are the same")
              (check-equal? (reverse (list empty)) (list empty) "Empty list")))

(require rackunit/text-ui)
(run-tests reverse-tests)

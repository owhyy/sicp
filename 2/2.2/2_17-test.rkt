#lang racket
(require rackunit
         "2_17.rkt")

(define last-pair-tests
  (test-suite "Tests for last-pair"
              (check-equal? (last-pair (list 3 5 6 8)) (list 8) "Base test")
              (check-equal? (last-pair (list 1 1 1 1)) (list 1) "All elements are the same")
              (check-equal? (last-pair (list empty)) (list empty) "Empty list")))

(require rackunit/text-ui)
(run-tests last-pair-tests)

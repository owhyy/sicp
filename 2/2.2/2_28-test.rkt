#lang racket

(require rackunit
         "2_28.rkt")

(define fringe-tests
  (test-suite "Tests for fringe"
              (check-equal? (fringe (list 3 5 6 8)) (list 3 5 6 8))
              (check-equal? (fringe (list (list 1 2 3 4) (list 1 2 3 4))) (list 1 2 3 4 1 2 3 4))
              (check-equal? (fringe (list empty)) empty "Empty list")))

(require rackunit/text-ui)
(run-tests fringe-tests)

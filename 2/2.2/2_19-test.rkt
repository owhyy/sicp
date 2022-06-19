#lang racket
(require rackunit
         "2_19.rkt")

(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define cc-tests
  (test-suite "Tests for coin counting modified program"
              (check-equal? (cc 100 us-coins) 292 "Base test #1")
              (check-equal? (cc 100 uk-coins) 104561 "Base test #2")))

(require rackunit/text-ui)
(run-tests cc-tests)

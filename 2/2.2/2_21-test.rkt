#lang racket
(require rackunit
         "2_21.rkt")

(define square-list-tests
  (test-suite
   "Tests for function taking an aribitrary number of arguments, producing only those with the same parity as the first argument"
   (check-equal? (square-list-first-implementation (list 1 2 3 4))
                 (square-list-second-implementation (list 1 2 3 4))
                 "Different implementations should produce the same result")))

(require rackunit/text-ui)
(run-tests square-list-tests)

#lang racket
(require rackunit
         "2_20.rkt")

(define same-parity-tests
  (test-suite
   "Tests for function taking an aribitrary number of arguments, producing only those with the same parity as the first argument"
   (check-equal? (same-parity 1 2 3 4 5) (list 1 3 5) "First is odd, rest is mixed")
   (check-equal? (same-parity 2 3 4 5 6) (list 2 4 6) "First is even, rest is mixed")
   (check-equal? (same-parity 1 3 5 7) (list 1 3 5 7) "First is odd, rest is odd")
   (check-equal? (same-parity 1 2 4 6) (list 1) "First is odd, rest is even")
   (check-equal? (same-parity 2 4 6 8) (list 2 4 6 8) "First is even, rest is even")
   (check-equal? (same-parity 2 3 5 7) (list 2) "First is even, rest is odd")
   (check-equal? (same-parity 0 2 3 5 7) (list 0 2) "Starts with 0, rest is mixed")
   (check-equal? (same-parity 0 2 4 6 8) (list 0 2 4 6 8) "Starts with 0, rest is even")
   (check-equal? (same-parity 0 1 3 5 7) (list 0) "Starts with 0, rest is odd")
   (check-equal? (same-parity 0) (list 0) "Zero is the only element")))

(require rackunit/text-ui)
(run-tests same-parity-tests)

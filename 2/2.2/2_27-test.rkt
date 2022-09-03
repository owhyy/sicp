#lang racket
(require rackunit
         "2_27.rkt")

(define deep-reverse-tests
  (test-suite "Tests for deep-reverse"
              (check-equal? (deep-reverse (list 3 5 6 8)) (list 8 6 5 3) "Base test")
              (check-equal? (deep-reverse (list (list 1 2) (list 3 4)))
                            (list (list 4 3) (list 2 1))
                            "All elements are the same")
              (check-equal? (deep-reverse (list empty)) (list empty) "Empty list")))

(require rackunit/text-ui)
(run-tests deep-reverse-tests)

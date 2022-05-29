#lang racket

(require "2_7.rkt"
         "2_11.rkt"
         rackunit)

(define all-pos (make-interval 1.1 1.3))
(define all-neg (make-interval -1.5 -1.3))
(define lowest-neg (make-interval -0.1 0.1))

(define mul-tests
  (test-suite
   "Interval multiplication tests"
   ; checking that mul-interval-split produces the same result as mul-interval
   (check-equal? (mul-interval-split all-pos all-pos) (mul-interval all-pos all-pos))
   (check-equal? (mul-interval-split all-neg all-neg) (mul-interval all-neg all-neg))
   (check-equal? (mul-interval-split all-pos all-neg) (mul-interval all-pos all-neg))
   (check-equal? (mul-interval-split all-neg all-pos) (mul-interval all-neg all-pos))
   (check-equal? (mul-interval-split all-pos lowest-neg) (mul-interval all-pos lowest-neg))
   (check-equal? (mul-interval-split all-neg lowest-neg) (mul-interval all-neg lowest-neg))
   (check-equal? (mul-interval-split lowest-neg all-pos) (mul-interval lowest-neg all-pos))
   (check-equal? (mul-interval-split lowest-neg all-neg) (mul-interval lowest-neg all-neg))
   (check-equal? (mul-interval-split lowest-neg lowest-neg) (mul-interval lowest-neg lowest-neg))))

(require rackunit/text-ui)
(run-tests mul-tests)

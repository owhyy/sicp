#lang racket

(require
  rackunit
  "2_7.rkt"
  "2_8.rkt"
  "2_9.rkt")

(define test-interval-0 (make-interval 5.0 6.0))
(define test-interval-1 (make-interval 2.35 3.70))
(define test-interval-2 (make-interval 3.31 3.68))

(define epsilon 0.000001)

(define width-tests
  (test-suite
    "Width tests"
    (check-equal? (width-interval test-interval-0) 0.5)

    ; the width of the sum of 2 intervals is the same as the sum of their widths
    (check-within (width-interval (add-interval test-interval-1 test-interval-2))
                  (+ (width-interval test-interval-1) (width-interval test-interval-2))
                  epsilon)

    ; the width of the difference of 2 intervals is the same as the difference of their widths
    (check-equal? (width-interval (sub-interval test-interval-1 test-interval-2))
                  (- (width-interval test-interval-1) (width-interval test-interval-2)))

    ; the width of the product of 2 intervals is NOT the same as the product of their widths
    (check-not-equal? (width-interval (mul-interval test-interval-1 test-interval-2))
                      (* (width-interval test-interval-1) (width-interval test-interval-2)))

    ; the width of the division of 2 intervals is NOT the same as the division of their widths
    (check-not-equal? (width-interval (div-interval test-interval-1 test-interval-2))
                      (/ (width-interval test-interval-1) (width-interval test-interval-2)))))

(require rackunit/text-ui)
(run-tests width-tests)

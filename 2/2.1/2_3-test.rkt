#lang racket
(require rackunit
         "2_2.rkt"
         "2_3.rkt")

(define rect-test-seg
  (make-rect-seg (make-segment (make-point 0 0) (make-point 0 5))
                 (make-segment (make-point 0 0) (make-point 3 0))))

(define rect-test-points
  (make-rect-points (make-point 0 0) (make-point 0 5) (make-point 3 0) (make-point 3 5)))

(define rectangle-tests
  (test-suite
   "Tests for the representation of rectangles on a plane"
   ;; calculation
   (check-equal? (rect-length-seg rect-test-seg) 5)
   (check-equal? (rect-width-seg rect-test-seg) 3)
   (check-equal? (rect-area-seg rect-test-seg) 15) ; 5 * 3
   (check-equal? (rect-perimeter-seg rect-test-seg) 16) ; 2*5 + 2*3
   ;; making sure both representations produce the same result
   (check-equal? (rect-length-seg rect-test-seg) (rect-length-points rect-test-points))
   (check-equal? (rect-width-seg rect-test-seg) (rect-width-points rect-test-points))
   (check-equal? (rect-area-seg rect-test-seg) (rect-area-points rect-test-points))
   (check-equal? (rect-perimeter-seg rect-test-seg) (rect-perimeter-points rect-test-points))))

(require rackunit/text-ui)
(run-tests rectangle-tests)

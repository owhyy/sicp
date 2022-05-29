#lang racket

(require rackunit
         "2_7.rkt"
         "2_8.rkt")

(check-equal? (sub-interval (make-interval 4.63 4.79)
                            (make-interval 3.63 3.79))
              (make-interval 1.0 1.0))

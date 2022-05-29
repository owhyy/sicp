#lang racket

(require "2_7.rkt"
         "2_10.rkt"
         rackunit)

(check-exn exn:fail? (lambda () (div-spans-zero (make-interval 0 0.3) (make-interval 1.1 1.3))))

#lang racket
(require "2_7.rkt"
         "2_13.rkt"
         rackunit)

(define r1 (make-interval 3.4 3.7))
(define r2 (make-interval 6.4 7.24))

(check-not-equal? (par1 r1 r2) (par2 r1 r2))

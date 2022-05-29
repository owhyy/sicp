#lang racket

(require rackunit
         "2_7.rkt"
         "2_12.rkt"
         "2_13.rkt")

(define A (make-interval 3.4 3.7))
(define B (make-interval 6.4 7.24))

(check-equal? (div-interval A A) 1) ; fails surprisingly
(div-interval A B)

(define r1 (make-interval -0.4 0.4))
(define r2 (make-interval -1.4 1.4))

; this works (if the percentages are the same)
(check-equal? (par1 r1 r2) (par2 r1 r2))

(define cp1 (make-center-percent 3.6 5))
(div-interval cp1 cp1)
; but it won't work for different intervals, as
; you don't know which single number you refer to
; the interval represents a infinite amount of numbers, not just one
; so A/A won't result in 1

; in other words, this happens because interval arithmetic is not the
; same as real number arithmetic

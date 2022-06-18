#lang racket

; not fast for big numbers
; TODO check for solutions
(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car z)
  (define (iter z res)
    (cond
      [(zero? z) res]
      [(zero? (remainder z 2)) (iter (/ z 2) (+ res 1))]
      [else res]))
  (iter z 0))

(define (cdr z)
  (define (iter z res)
    (cond
      [(zero? z) res]
      [(zero? (remainder z 3)) (iter (/ z 3) (+ res 1))]
      [else res]))
  (iter z 0))

#lang racket

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (or (and (> n 0) (> d 0))
            (and (< n 0) (< d 0)))
      (cons (abs (/ n g)) (abs (/ d g)))
      (if (< n 0)
        (cons (/ n g) (abs (/ d g)))
        (cons (/ (- n) g) (abs (/ d g)))))))


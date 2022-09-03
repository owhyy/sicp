#lang racket

(define (for-each f loe)
  (if (empty? loe)
      #t
      (begin
        (f (car loe))
        (for-each f (cdr loe)))))

(for-each (lambda (x)
            (newline)
            (display x))
          (list 68 13 129))

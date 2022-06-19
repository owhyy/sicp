#lang racket

(define (last-pair loe)
  ;; reverse the list by accumulating iteratively
  (define (reverse-list acc l)
    (if (empty? l) acc (reverse-list (cons acc (car l)) (cdr l))))
  ;; return the first element of thg reversed list
  (let ([rev-list (reverse-list empty loe)]) (if (empty? rev-list) empty (car rev-list))))

(provide (all-defined-out))

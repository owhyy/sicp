#lang racket

(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;; (add-1 zero) -> (add1 (lambda (f) (lambda (x) x)))
;; (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x))))
;; (lambda (f) (lambda (x) (f ((lambda (x) x) x))))
;; (lambda (f) (lambda (x) (f x))) <- one

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

;; (plus one two)
;; (plus (lambda (f) (lambda (x) (f x)))
;;       (lambda (f) (lambda (x) (f (f x)))))
;; should produce (lambda (f (lambda (x (f (f (f x)))))))
(define (plus m n)
  (lambda (f) (lambda (x) (f ((m f) ((n f) x))))))

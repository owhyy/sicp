#lang racket
(require "2_7.rkt")

; there are no cases that need more than one multiplication
; TODO verify solution
(define (mul-interval-split x y)
  (let ([lbx (lower-bound x)] [lby (lower-bound y)] [ubx (upper-bound x)] [uby (upper-bound y)])
    (cond
      [(and (> lbx 0) (> lby 0) (> ubx 0) (> uby 0)) (make-interval (* lbx lby) (* ubx uby))]
      [(and (< lbx 0) (< lby 0) (< ubx 0) (< uby 0)) (make-interval (* uby uby) (* lbx lby))]
      [(and (> lbx 0) (> ubx 0) (< lby 0) (< uby 0)) (make-interval (* ubx lby) (* lbx uby))]
      [(and (< lbx 0) (< ubx 0) (> lby 0) (> uby 0)) (make-interval (* lbx uby) (* lby ubx))]
      [(and (> lbx 0) (> ubx 0) (< lby 0) (> uby 0)) (make-interval (* ubx lby) (* ubx uby))]
      [(and (< lbx 0) (< ubx 0) (< lby 0) (> uby 0)) (make-interval (* lbx uby) (* lbx lby))]
      [(and (< lbx 0) (> ubx 0) (> lby 0) (> uby 0)) (make-interval (* lbx uby) (* ubx uby))]
      [(and (< lbx 0) (> ubx 0) (< lby 0) (< uby 0)) (make-interval (* ubx lby) (* lbx lby))]
      [(and (< lbx 0) (> ubx 0) (< lby 0) (> uby 0)) (make-interval (* ubx lby) (* lbx lby))])))

(provide (all-defined-out))

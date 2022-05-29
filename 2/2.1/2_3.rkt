#lang racket
(require "2_2.rkt")

;; we need some way to have functions return same thing even when
;; called on different representations

;; for instance, calling top-left, top-right, bottom-left and bottom-right
;; should return the same things

;; all possible representations:
;; 1. 4 points
;; 2. 2 segments (assuming they are perpendicular)
;; 3. 2 points - top right and bottom left
;; 4.

;; TODO finish

(provide (all-defined-out))

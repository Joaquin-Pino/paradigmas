#lang racket
;puntos
(define (make-point x y) (cons x y))

(define (coord-x punto) (car punto))

(define (coord-y punto) (cdr punto))

;segmentos
(define (make-segment inicio final) (cons inicio final))


(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

;procedures
(define (promedio a b)
  (/ (+ a b) 2)
  )

(define (punto-medio segmento)
  (let ((inicio (start-segment segmento))
        (final (end-segment segmento)))
    (let ((x1 (coord-x inicio))
          (y1 (coord-y inicio))
          (x2 (coord-x final))
          (y2 (coord-y final)))
      (make-point (promedio x1 x2) (promedio y1 y2)))))

(define p1 (make-point 0 0))
(define p2 (make-point 2 2))

(display (punto-medio (make-segment p1 p2)))


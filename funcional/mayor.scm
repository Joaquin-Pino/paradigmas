cd#lang r5rs

(define (mayor a b)
    (if (>= a b) a b))

(define (encontrar-mayor mi-lista)
  (if (null? (cdr mi-lista))
      (car mi-lista)
      (let ((mayor-del-resto (encontrar-mayor (cdr mi-lista))))
        (if (> (car mi-lista) mayor-del-resto)
            (car mi-lista)
            mayor-del-resto))))


(define numeros '(10 5 25 8 15))
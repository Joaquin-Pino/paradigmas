;funcionalidades de listas
#lang racket

(define (obtener-n-termino lista n)
  (if (= n 0)
      (car lista)
      (obtener-n-termino (cdr lista) (- n 1))
      ))

;obtener largo lista full recursivo
(define (largo lista)
  (if (null? lista)
      0
      (+ 1 (largo (cdr lista)))))

;obtener largo lista iterativo
(define (largo-iter lista cnt)
  (if (null? lista)
      cnt
      (largo-iter (cdr lista) (+ cnt 1))))

;crear propia definicion de append
(define (mi-append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (mi-append (cdr list1) list2))))

(mi-append '(1 2 3 4 5) '(6 7 8 9 ))

;obtiene ultimo elemento de la lista
(define (obtener-ultimo lista)
  (if (null? (cdr lista))
      (car lista)
      (obtener-ultimo (cdr lista))))

(obtener-ultimo '(1 2 3 4 5 6 7))


;invertir lista, primer intento
#|
(define (invertir lista)
  (if (null? lista)
      '()
      (cons (invertir (cdr lista)) (car lista)))) |#
;esta idea no funciono porque se esta uniendo un elemento al final de la lista
; no se esta uniendo una lista como tal


;;invertir lista sin usar append ni acumulador
(define (anadir-final lista elem);; esto hace lo mismo que append
  (if (null? lista)
      (list elem)
      (cons (car lista) (anadir-final (cdr lista) elem))))

(define (invertir lista)
  (if (null? lista)
      '()
      (anadir-final (invertir (cdr lista)) (car lista))))

(invertir '(1 2 3 4 5))

;;invertir lista usando acumulador
;TODO

;;invertir lista usando append
;TODO

;;sumar elementos de la lista
(define (sumar-lista lista)
  (if (null? lista)
       0
       (+ (car lista) (sumar-lista (cdr lista)))))

(sumar-lista '(1 2 3 4 5 6))

;;encontrar un elemento el la lista
(define (encontrar? elemento lista)
  (cond
    ((null? lista) #f)
    ((= (car lista) elemento) #t)
    (else (encontrar? elemento (cdr lista)))))

(encontrar? 1 '(1 2 3 4 5 6 7))


;; crear filter propio
;TODO

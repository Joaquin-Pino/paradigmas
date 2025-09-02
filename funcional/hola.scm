#lang r5rs

(define (hola-mundo)
  (display "Hola, mundo"))

(define (test x)
    (if (< x 3) (display "el numero ingresado es menor a 3")) 
)

(define (verificar_nota x)
    (cond
        ((or (> x 7) (< x 1))
            (display "la nota ingresada no es valida")
            (newline)
        )
        ((>= x 4)
            (display "aprobaste con nota: ")
            (display x)
            (newline)
        )
        ((< x 4)
            (display "reprobaste con nota")
            (display x)
            (newline)
        )
    )
)

(define (es_par n)
    (cond
        ((= (modulo 2 n) 0)
            (display "el numero es par")
            (newline)
        )
        (else 
            (display "el numero es impar")
            (newline)
        )
    )
)

(define (max a b)
    (cond
        ((> a b) a)
        ((<= a b) b)  
    )
)

(define (min a b)
    (cond
        ((< a b) a)
        ((>= a b) b)  
    )
)

(define (imc peso altura)
    (/ peso (* altura altura))
)

;(if (< 100 8) (display "true") (display "false"))

;bucle recursivo
(define (contar_hasta n tope)
    (if (> n tope)
        #t
        (begin (display n) (newline) (contar_hasta (+ n 1) tope))
    )
)

(define (factorial n)
    (if (= n 1)
        1
        (begin (* n (factorial (- n 1))))
    )
)


(display (factorial 5))
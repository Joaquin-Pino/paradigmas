#|Define a procedure that takes three numbers
as arguments and returns the sum of the squares of the two
larger numbers.|#

(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (suma-cuadrados-may x y z)
  (cond
    ((and (<= x y) (<= x z))
     (sum-of-squares y z))
    ((and (<= y z) (<= y x))
     (sum-of-squares z x))
    (else sum-of-squares x y )))

(suma-cuadrados-may 2 3 4)
         
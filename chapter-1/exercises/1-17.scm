(define (double n) (* n 2))
(define (halve n) (/ n 2))
(define (even? n)
    (= (remainder n 2) 0))

(define (mul a b)
    (cond ((= b 0) 0)
        ((even? b) (mul (double a) (halve b)))
        (else (+ a (mul a  (- b 1))))))


(display (mul 3 4))


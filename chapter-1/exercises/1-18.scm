(define (double n) (* n 2))
(define (halve n) (/ n 2))
(define (even? n)
    (= (remainder n 2) 0))

(define (mul a b) (mul-iter 0 a b))

(define (mul-iter acc a b) 
    (cond ((= b 0) acc)
        ((even? b) (mul-iter acc (double a) (halve b)))
        (else (mul-iter (+ acc a) a (- b 1)))))


(display (mul 3 4))


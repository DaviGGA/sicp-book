(define (sqrt x)
    (sqrt-iter 1.0 0.0 x))

(define (sqrt-iter guess prev-guess x)
    (if (good-enough? guess prev-guess x)
        guess
        (sqrt-iter (improve guess x ) guess x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess prev-guess x)
    (< (abs (-  1 (/ prev-guess guess))) 0.000001))
         

(define (average x y)
    (/ (+ x y) 2))

(display (sqrt 0.000000000009))


(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x ) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (average x y)
    (/ (+ x y) 2))

(display (sqrt 9))

(define (new-if predicate then-clause else-clause) 
    (cond predicate then-clause
        (else else-clause)))

;; Gera um stackoverflow porque new-if é eager/applicative order. 
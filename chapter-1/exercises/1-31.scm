

(define (inc n) (+ n 1))
(define (id n) n)
(define (factorial n) (product id 1 inc n))

(define (product-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))

(define (factorial-iter n) (product-iter id 1 inc n))

(display (factorial-iter 5))
(newline)
(display (factorial 5))
(newline)


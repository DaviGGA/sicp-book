(define (inc n) (+ n 1))

(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
        (sum term (next a) next b))))


(define (sum-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))))
            
    (iter a 0))


(define (sum-square a b) (sum square a inc b))
(define (sum-square-iter a b) (sum-iter square a inc b))

(display (sum-square 1 10))
(newline)
(display (sum-square-iter 1 10))
(newline)
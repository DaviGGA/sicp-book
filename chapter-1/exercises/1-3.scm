(define (sum-greatests a b c)
    (cond 
        ((< a b c) (+ b c))
        ((< b c a) (+ a c))
        (else (+ a b))))

(display (sum-greatests 4 5 3))
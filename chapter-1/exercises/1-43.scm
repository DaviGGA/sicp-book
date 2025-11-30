(define (compose f g) (lambda (x) (f (g x))))
(define (square x) (* x x))

(define (repeated f n) 
    (cond
        ((= n 0) (lambda (x) x))
        (else (compose f (repeated f (- n 1))))))

;(display ((repeated square 2) 5))
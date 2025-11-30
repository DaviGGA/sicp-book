(define (double f) (lambda (x) (f (f x))))

(define (inc x) (+ x 1))

(define (inc-twice x) ((double inc) x))

(display (((double (double double)) inc) 5))
(define (make-interval upper lower) (cons upper lower))
(define (lower-bound interval) (car interval))
(define (upper-bound interval) (cdr interval))
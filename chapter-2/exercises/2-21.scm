(define (square-list items)
    (if (null? items)
        ()
        (cons (* (car items) (car items)) (square-list (cdr items)))))

; (define (square-list items)
;     (map (lambda (n) (* n n)) items))

(display (square-list (list 1 2 3 4)))

(define x (list (list 1 2) (list 3 4)))

(define (fringe x)
    (cond 
        ((null? x) x)
        ((pair? (car x))
            (append (fringe (car x))
                    (fringe (cdr x))))
        (else (cons (car x) (fringe (cdr x))))))

(display (fringe (list x x)))
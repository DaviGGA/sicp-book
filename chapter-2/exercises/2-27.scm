(define x (list (list 1 2) (list 3 4)))
(define y (list 1 (list 2 3) (list 4 (list 5 6))))

(define (reverse lst)
    (if (null? (cdr lst))
        (list (car lst))
        (append (reverse (cdr lst)) (list (car lst)))))


(define (deep-reverse x)
    (if (pair? x) 
        (map deep-reverse (reverse x))
        x))

(display (deep-reverse y))




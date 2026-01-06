; (define (square-list items)
;     (define (iter things answer)
;         (if (null? things)
;             answer
;             (iter (cdr things)
;                 (cons (square (car things))
;                     answer))))
;     (iter items '()))

; (square-list (list 1 2 3))
; (iter (list 2 3) (1))
; (iter (list 3) (4 1))
; (iter '() (9 4 1))

; Essa versão começa insere a head no começo, depois passa para a proxima iteração,
; dessa forma os ultimos items da list acabam no começo.

(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter (cdr things)
                (cons answer
                    (square (car things))))))
    (iter items '()))

(display (square-list (list 1 2 3)))

;; como answer é uma list o resultado de (cons (list a b c) n) gera uma list ((a b c) . n)